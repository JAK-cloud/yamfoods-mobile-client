import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../../../app/routes/app_router.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/widgets/custom_app_bar.dart';
import '../../../../core/enums/payment_method.dart';
import '../../../../core/services/chapa_payment_service.dart';
import '../../../../core/services/snackbar_service.dart';
import '../../../app_configuration/presentation/providers/app_configuration_providers.dart';
import '../../../auth/presentation/providers/auth_user_state.dart';
import '../../../branch/presentation/providers/branch_providers.dart';
import '../../../cart/domain/entities/cart.dart';
import '../../../cart/presentation/providers/cart_notifier.dart';
import '../../../order/domain/entities/order_request_data.dart';
import '../../../order/presentation/providers/order_events.dart';
import '../../../order/presentation/providers/order_notifier.dart';
import '../../../../core/errors/failure.dart';
import '../handlers/checkout_payment_handler.dart';
import '../providers/checkout_notifier.dart';
import '../providers/checkout_summary_provider.dart';
import '../widgets/address_section.dart';
import '../widgets/checkout_summary_card.dart';
import '../widgets/delivery_type_section.dart';
import '../widgets/item_section.dart';
import '../widgets/payment_method_section.dart';
import '../widgets/points_section.dart';
import '../widgets/promo_code_section.dart';
import '../widgets/schedule_section.dart';
import '../widgets/special_instructions_section.dart';

/// Checkout screen for placing orders.
///
/// Flow: place order → order created → open payment → user leaves payment screen
/// (Telebirr: app resumed, Chapa: route popped) → show verification dialog →
/// query order → success: dismiss, clear cart, navigate; fail: Retry + Skip.
/// See docs/checkout_payment_verification_plan.md.
class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({
    super.key,
    required this.branchId,
    required this.carts,
  });

  final int branchId;
  final List<Cart> carts;

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen>
    with WidgetsBindingObserver, RouteAware {
  String? _pendingMethod;
  String? _pendingTxnRef;
  int? _pendingOrderId;
  ChapaPaymentParams? _pendingChapaParams;

  bool _waitingForPayment = false;
  bool _showVerificationDialog = false;
  bool? _verificationSuccess;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route != null && route.isCurrent) {
      checkoutRouteObserver.unsubscribe(this);
      checkoutRouteObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    checkoutRouteObserver.unsubscribe(this);
    super.dispose();
  }

  // Called by WidgetsBinding when app lifecycle changes (Telebirr: user returns from app).
  void didChangeAppLifecycle(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed &&
        _waitingForPayment &&
        _pendingMethod == PaymentMethod.telebirr.value) {
      _onPaymentScreenLeft();
    }
  }

  @override
  void didPopNext() {
    if (_waitingForPayment && _pendingMethod == PaymentMethod.chapa.value) {
      _onPaymentScreenLeft();
    }
  }

  void _onPaymentScreenLeft() {
    if (!_waitingForPayment) return;
    _waitingForPayment = false;

    if (!mounted) return;
    setState(() {
      _showVerificationDialog = true;
      _verificationSuccess = null;
    });

    _runResolvePayment();
  }

  Future<void> _runResolvePayment() async {
    final orderId = _pendingOrderId;
    final method = _pendingMethod?.toPaymentMethod();
    if (orderId == null || method == null) return;

    final handler = ref.read(checkoutPaymentHandlerProvider);
    await handler.resolvePayment(
      (success) {
        if (!mounted) return;
        setState(() => _verificationSuccess = success);
        if (success) {
          _clearCartAndNavigate();
          _dismissVerificationDialog();
        }
      },
      orderId: orderId,
      method: method,
      txnRef: _pendingTxnRef,
    );
  }

  void _onRetry() {
    ref.read(checkoutPaymentHandlerProvider).resetResolved();
    setState(() => _verificationSuccess = null);
    _runResolvePayment();
  }

  void _onSkip() {
    _dismissVerificationDialog();
  }

  void _dismissVerificationDialog() {
    if (!mounted) return;
    setState(() {
      _showVerificationDialog = false;
      _verificationSuccess = null;
    });
  }

  void _clearCartAndNavigate() {
    ref.read(cartProvider(widget.branchId).notifier).deleteAllCartItems();
    if (mounted) {
      context.go(RouteName.order);
    }
  }

  OrderRequestData _buildOrderRequestData() {
    final checkoutState = ref.read(checkoutProvider(widget.branchId));
    final summary = ref.read(checkoutSummaryProvider(widget.branchId));
    final distanceKm = ref.read(currentBranchDistanceProvider);

    return OrderRequestData(
      branchId: checkoutState.branchId,
      deliveryAddressId: checkoutState.orderType == 'delivery'
          ? checkoutState.selectedAddress?.id
          : null,
      orderType: checkoutState.orderType,
      scheduledAt: checkoutState.scheduledAt,
      method: checkoutState.paymentMethod!,
      note: checkoutState.note,
      quantity: summary.quantity,
      subtotal: summary.subtotal,
      vatTotal: summary.vatTotal,
      deliveryFee: summary.deliveryFee,
      discountTotal: summary.discountTotal,
      totalAmount: summary.totalAmount,
      transactionFee:
          summary.transactionFee > 0 ? summary.transactionFee : null,
      pointUsed: checkoutState.pointUsed,
      pointDiscount: checkoutState.pointDiscount,
      promoCode: checkoutState.promoCode,
      promoCodeDiscount: checkoutState.promoCodeDiscount,
      distanceKm: distanceKm,
    );
  }

  void _handlePlaceOrder(BuildContext context) {
    final orderData = _buildOrderRequestData();
    ChapaPaymentParams? chapaParams;
    if (orderData.method == PaymentMethod.chapa.value) {
      final user = ref.read(currentUserProvider);
      if (user == null) {
        ref.read(snackbarServiceProvider).showError(Failure.payment(
              message:
                  'Please complete your profile (email and phone) to use Chapa.',
            ));
        return;
      }
      final summary = ref.read(checkoutSummaryProvider(widget.branchId));
      final nameParts = user.name.trim().split(RegExp(r'\s+'));
      final firstName = nameParts.isNotEmpty ? nameParts.first : user.name;
      final lastName =
          nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';
      chapaParams = ChapaPaymentParams(
        amount: summary.totalAmount.toStringAsFixed(2),
        email: user.email,
        phone: user.phone ?? '',
        firstName: firstName,
        lastName: lastName.isNotEmpty ? lastName : firstName,
        txRef: 'yam_${const Uuid().v4()}',
        title: 'Order Payment',
        desc: 'Payment for your order',
        buttonColor: AppColors.primary,
      );
      _pendingTxnRef = chapaParams.txRef;
      _pendingChapaParams = chapaParams;
    }
    _pendingMethod = orderData.method;
    ref.read(orderProvider.notifier).createOrder(orderData);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<OrderUiEvent?>(orderUiEventsProvider, (_, next) {
      if (next == null) return;
      if (next is OrderFailure) {
        ref.read(snackbarServiceProvider).showError(next.failure);
        ref.read(orderUiEventsProvider.notifier).clear();
        return;
      }
      if (next is OrderCreated) {
        ref.read(orderUiEventsProvider.notifier).clear();
        final orderId = next.response.order.id;
        final method = _pendingMethod?.toPaymentMethod();
        if (method == null) return;

        _pendingOrderId = orderId;
        _waitingForPayment = true;
        final handler = ref.read(checkoutPaymentHandlerProvider);
        handler.openPayment(
          orderId: orderId,
          method: method,
          txnRef: _pendingTxnRef,
          context: context,
          receiveCode: next.response.receiveCode,
          chapaParams: _pendingChapaParams,
        );
      }
    });

    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.background,
          appBar: const CustomAppBar(title: 'Checkout'),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemSection(carts: widget.carts),
                      DeliveryTypeSection(branchId: widget.branchId),
                      AddressSection(branchId: widget.branchId),
                      PromoCodeSection(branchId: widget.branchId),
                      PointsSection(branchId: widget.branchId),
                      Consumer(
                        builder: (context, ref, child) {
                          final appConfig = ref
                              .watch(appConfigurationProvider)
                              .value;
                          final maxDaysAhead =
                              appConfig?.maxOrderSchedulingDays ?? 7;
                          return ScheduleSection(
                            branchId: widget.branchId,
                            workingHourStart: const TimeOfDay(hour: 9, minute: 0),
                            workingHourEnd: const TimeOfDay(hour: 22, minute: 0),
                            maxDaysAhead: maxDaysAhead,
                          );
                        },
                      ),
                      SpecialInstructionsSection(branchId: widget.branchId),
                      PaymentMethodSection(branchId: widget.branchId),
                      const SizedBox(height: AppSizes.lg),
                    ],
                  ),
                ),
              ),
              CheckoutSummaryCard(
                branchId: widget.branchId,
                onPlaceOrder: () => _handlePlaceOrder(context),
              ),
            ],
          ),
        ),
        if (_showVerificationDialog) ...[
          _buildVerificationOverlay(),
          Center(child: _buildVerificationDialogContent()),
        ],
      ],
    );
  }

  Widget _buildVerificationOverlay() {
    return Positioned.fill(
      child: ModalBarrier(
        dismissible: false,
        color: Colors.black54,
      ),
    );
  }

  Widget _buildVerificationDialogContent() {
    if (_verificationSuccess == null) {
      return Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'We are processing your payment',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      );
    }
    if (_verificationSuccess == false) {
      return Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Payment could not be confirmed',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'You can retry checking the payment status or skip and check your orders later.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _onSkip,
                  child: const Text('Skip'),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: _onRetry,
                  child: const Text('Retry'),
                ),
              ],
            ),
          ],
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
