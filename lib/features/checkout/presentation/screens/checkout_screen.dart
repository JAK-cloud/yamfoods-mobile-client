import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:uuid/uuid.dart';

import '../../../../app/routes/app_router.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../core/errors/failure.dart';
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
import '../../../order/domain/entities/query_order_request.dart';
import '../../../order/presentation/providers/order_events.dart';
import '../../../order/presentation/providers/order_notifier.dart';
import '../providers/checkout_notifier.dart';
import '../providers/checkout_summary_provider.dart';
import '../widgets/address_section.dart';
import '../widgets/checkout_summary_card.dart';
import '../widgets/delivery_type_section.dart';
import '../widgets/item_section.dart';
import '../widgets/points_section.dart';
import '../widgets/payment_method_section.dart';
import '../widgets/payment_verification_dialog.dart';
import '../widgets/promo_code_section.dart';
import '../widgets/schedule_section.dart';
import '../widgets/special_instructions_section.dart';

/// Checkout screen for placing orders.
///
/// This screen will handle:
/// - Order summary display
/// - Delivery type selection (pickup/delivery)
/// - Address selection (for delivery)
/// - Promo code application
/// - Points redemption
/// - Order scheduling
/// - Special instructions
/// - Price breakdown
/// - Order placement
///
/// Chapa flow: Place order → order created (Chapa) →
/// we store orderId/txRef and start Chapa payment (SDK pushes its own route).
/// When user finishes or cancels, that route pops → we get [RouteAware.didPopNext]
/// → we show [PaymentVerificationDialog] to query payment status; on success
/// we clear cart and navigate to orders. See [checkoutRouteObserver] in app_router.
class CheckoutScreen extends ConsumerStatefulWidget {
  final int branchId;
  final List<Cart> carts;

  const CheckoutScreen({
    super.key,
    required this.branchId,
    required this.carts,
  });

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen>
    with RouteAware {
  // Chapa-only: we only care about Chapa here (no Telebirr). When order is
  // created with Chapa we store these so that when the Chapa route pops we can
  // show the verification dialog and query the backend.
  int? _pendingChapaOrderId;
  String? _pendingChapaTxnRef;
  bool _waitingForChapaPayment = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Subscribe to route observer so we get didPopNext when a route on top of us
    // is popped (e.g. Chapa payment screen). Unsubscribe first to avoid dupes.
    final route = ModalRoute.of(context);
    if (route != null && route.isCurrent) {
      checkoutRouteObserver.unsubscribe(this);
      checkoutRouteObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    checkoutRouteObserver.unsubscribe(this);
    super.dispose();
  }

  /// Called when a route that was pushed on top of us is popped (e.g. user
  /// returns from Chapa). We then show the verification dialog to query
  /// payment status. This is why we use RouteAware.
  @override
  void didPopNext() {
    if (_waitingForChapaPayment && _pendingChapaOrderId != null) {
      _waitingForChapaPayment = false;
      _showChapaVerificationDialog();
    }
  }

  /// Shows the payment verification dialog. Deferred to next frame so the
  /// dialog actually appears (didPopNext runs during transition; showing in
  /// the same frame can fail). Uses root navigator context so the dialog
  /// is on the correct overlay.
  void _showChapaVerificationDialog() {
    final orderId = _pendingChapaOrderId!;
    if (!mounted) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final dialogContext =
          SnackbarService.rootNavigatorKey.currentContext ?? context;
      if (dialogContext.mounted) {
        PaymentVerificationDialog.show(
          dialogContext,
          request: QueryOrderRequest(
            method: PaymentMethod.chapa,
            orderId: orderId,
            txnRef: _pendingChapaTxnRef,
          ),
          onSuccess: _clearCartAndNavigate,
        );
      }
    });
  }

  /// Creates OrderRequestData from checkout state and summary.
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
      transactionFee: summary.transactionFee > 0
          ? summary.transactionFee
          : null,
      pointUsed: checkoutState.pointUsed,
      pointDiscount: checkoutState.pointDiscount,
      promoCode: checkoutState.promoCode,
      promoCodeDiscount: checkoutState.promoCodeDiscount,
      distanceKm: distanceKm,
    );
  }

  /// Handles place order action.
  ///
  /// Pass [context] for Chapa native checkout; must be mounted when called.
  void _handlePlaceOrder(BuildContext context) {
    final orderData = _buildOrderRequestData();
    ref.read(orderProvider.notifier)
        .createOrder(orderData);
  }

   ChapaPaymentParams? chapaPaymentParams(OrderRequestData orderData) {
      final user = ref.read(currentUserProvider);
      if (user == null) {
        ref.read(snackbarServiceProvider).showError(Failure.payment(
              message:
                  'Please complete your profile (email and phone) to use Chapa.',
            ));
        return null;
      }
      final nameParts = user.name.trim().split(RegExp(r'\s+'));
      final firstName = nameParts.isNotEmpty ? nameParts.first : user.name;
      final lastName =
          nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '';
      return ChapaPaymentParams(
        amount: orderData.totalAmount.toStringAsFixed(2),
        email: user.email,
        phone: user.phone ?? '',
        firstName: firstName,
        lastName: lastName.isNotEmpty ? lastName : firstName,
        txRef: 'yam_${const Uuid().v4()}',
        title: 'Order Payment',
        desc: 'Payment for your order',
        buttonColor: AppColors.primary,
      );
    }

    void _clearCartAndNavigate() {
    ref.read(cartProvider(widget.branchId).notifier).deleteAllCartItems();
    if (mounted) {
      context.go(RouteName.order);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Listen to order events (payment is already handled inside order notifier)
    ref.listen<OrderUiEvent?>(orderUiEventsProvider, (previous, next) {
      if (next == null) return;

      final snackbar = ref.read(snackbarServiceProvider);

      if (next is OrderCreated) {
        ref.read(orderUiEventsProvider.notifier).clear();
        // Chapa only: store orderId/txRef and set waiting so didPopNext will
        // show the verification dialog when user returns from Chapa.
        if (next.method == PaymentMethod.chapa) {
          final params = chapaPaymentParams(next.orderRequestData);
          if (params != null) {
            _pendingChapaOrderId = next.response.order.id;
            _pendingChapaTxnRef = params.txRef;
            _waitingForChapaPayment = true;
            ref.read(chapaPaymentServiceProvider).startPayment(context, params);
          } else {
            snackbar.showError(Failure.payment(
                message:
                    'Something went wrong when we initiate chapa payment, please contact support'));
          }
        }
      } else if (next is OrderFailure) {
        // Order creation failed OR payment failed
        snackbar.showError(next.failure);
        ref.read(orderUiEventsProvider.notifier).clear();
      }

      
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(title: 'Checkout'),
      body: Column(
        children: [
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Order Summary Section
                  ItemSection(carts: widget.carts),
                  // Delivery Type Section
                  DeliveryTypeSection(branchId: widget.branchId),
                  // Address Section (only shown for delivery)
                  AddressSection(branchId: widget.branchId),
                  // Promo Code Section
                  PromoCodeSection(branchId: widget.branchId),
                  // Points Section
                  PointsSection(branchId: widget.branchId),
                  // Schedule Order Section
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
                  // Special Instructions Section
                  SpecialInstructionsSection(branchId: widget.branchId),
                  // Payment Method Section
                  PaymentMethodSection(branchId: widget.branchId),
                  // Bottom padding for summary card
                  SizedBox(height: AppSizes.lg),
                ],
              ),
            ),
          ),
          // Fixed summary card at bottom
          CheckoutSummaryCard(
            branchId: widget.branchId,
            onPlaceOrder: () => _handlePlaceOrder(context),
          ),
        ],
      ),
    );
  }
}
