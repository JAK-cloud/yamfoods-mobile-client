import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/components/custom_button.dart';
import '../../../../app/components/input_textfield.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/widgets/custom_app_bar.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/snackbar_service.dart';
import '../../../../core/utils/validators.dart';
import '../../domain/entities/address.dart';
import '../../domain/entities/address_request_data.dart';
import '../providers/address_events.dart';
import '../providers/address_loading_providers.dart';
import '../providers/address_notifier.dart';
import '../providers/location_selection_provider.dart';
import '../widgets/location_selection_section.dart';

class CreateOrUpdateAddressScreen extends ConsumerStatefulWidget {
  final Address? address;

  const CreateOrUpdateAddressScreen({super.key, this.address});

  @override
  ConsumerState<CreateOrUpdateAddressScreen> createState() =>
      _CreateOrUpdateAddressScreenState();
}

class _CreateOrUpdateAddressScreenState
    extends ConsumerState<CreateOrUpdateAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _subcityController;
  late final TextEditingController _streetController;
  late final TextEditingController _buildingController;
  late final TextEditingController _houseNoController;
  late final TextEditingController _noteController;

  @override
  void initState() {
    super.initState();
    _subcityController = TextEditingController(
      text: widget.address?.subcity != 'N/A' ? widget.address?.subcity : '',
    );
    _streetController = TextEditingController(
      text: widget.address?.street != 'N/A' ? widget.address?.street : '',
    );
    _buildingController = TextEditingController(
      text: widget.address?.building != 'N/A' ? widget.address?.building : '',
    );
    _houseNoController = TextEditingController(
      text: widget.address?.houseNo != 'N/A' ? widget.address?.houseNo : '',
    );
    _noteController = TextEditingController(
      text: widget.address?.note != 'N/A' ? widget.address?.note : '',
    );

    // Initialize location based on mode (create vs update)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.address != null) {
        // Update mode: use existing address coordinates
        final lat = double.tryParse(widget.address!.lat);
        final lng = double.tryParse(widget.address!.lng);
        if (lat != null && lng != null) {
          ref
              .read(locationSelectionProvider.notifier)
              .initializeWithExistingAddress(lat, lng);
        }
        // If parsing fails, provider will fall back to fetching current location
      }
      // Create mode: provider already fetches current location on build()
    });
  }

  @override
  void dispose() {
    _subcityController.dispose();
    _streetController.dispose();
    _buildingController.dispose();
    _houseNoController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (_formKey.currentState?.validate() ?? false) {
      final locationState = ref.read(locationSelectionProvider);
      final snackbar = ref.read(snackbarServiceProvider);

      // Check if coordinates are available
      if (locationState.selectedLat == null ||
          locationState.selectedLng == null) {
        snackbar.showError(
          const Failure.validation(
            message: 'Please select a location before submitting.',
          ),
        );
        return;
      }

      // Validate coordinate ranges
      final coordValidation = Validators.validateCoordinates(
        locationState.selectedLat!,
        locationState.selectedLng!,
      );
      if (coordValidation != null) {
        snackbar.showError(coordValidation);
        return;
      }

      final data = AddressRequestData(
        subcity: _subcityController.text.trim(),
        street: _streetController.text.trim().isEmpty
            ? null
            : _streetController.text.trim(),
        building: _buildingController.text.trim().isEmpty
            ? null
            : _buildingController.text.trim(),
        houseNo: _houseNoController.text.trim().isEmpty
            ? null
            : _houseNoController.text.trim(),
        note: _noteController.text.trim().isEmpty
            ? null
            : _noteController.text.trim(),
        lat: locationState.selectedLat!,
        lng: locationState.selectedLng!,
      );

      if (widget.address == null) {
        // Create new address
        await ref.read(addressProvider.notifier).create(data);
      } else {
        // Update existing address
        await ref
            .read(addressProvider.notifier)
            .updateAddress(id: widget.address!.id, data: data);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Listen for address events
    ref.listen<AddressUiEvent?>(addressUiEventsProvider, (prev, next) {
      if (next == null) return;
      if (next is AddressCreated || next is AddressUpdated) {
        context.pop();
      }
      ref.read(addressUiEventsProvider.notifier).clear();
    });

    final isCreating = widget.address == null;
    final isLoading = isCreating
        ? ref.watch(addressCreateLoadingProvider)
        : ref
              .watch(addressUpdateLoadingProvider)
              .contains(widget.address?.id ?? 0);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        title: isCreating ? 'Add Address' : 'Update Address',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(AppSizes.lg),
        child:
            Form(
                  key: _formKey,
                  child: Container(
                    padding: const EdgeInsets.all(AppSizes.lg),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withValues(alpha: 0.08),
                          blurRadius: 20,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Location Selection Section
                        const LocationSelectionSection(),
                        const SizedBox(height: AppSizes.xl),

                        // Subcity Field (Required)
                        _buildLabel('Subcity *'),
                        const SizedBox(height: AppSizes.sm),
                        InputTextfield(
                          controller: _subcityController,
                          hintText: 'Enter subcity',
                          icon: Icons.location_city_rounded,
                          validator: Validators.validateSubcity,
                          keyboardType: TextInputType.text,
                          maxLength: 50,
                        ),
                        const SizedBox(height: AppSizes.lg),

                        // Street Field (Optional)
                        _buildLabel('Street'),
                        const SizedBox(height: AppSizes.sm),
                        InputTextfield(
                          controller: _streetController,
                          hintText: 'Enter street name',
                          icon: Icons.signpost_rounded,
                          validator: Validators.validateStreet,
                          keyboardType: TextInputType.text,
                          maxLength: 100,
                        ),
                        const SizedBox(height: AppSizes.lg),

                        // Building Field (Optional)
                        _buildLabel('Building'),
                        const SizedBox(height: AppSizes.sm),
                        InputTextfield(
                          controller: _buildingController,
                          hintText: 'Enter building name or number',
                          icon: Icons.business_rounded,
                          validator: Validators.validateBuilding,
                          keyboardType: TextInputType.text,
                          maxLength: 50,
                        ),
                        const SizedBox(height: AppSizes.lg),

                        // House Number Field (Optional)
                        _buildLabel('House Number'),
                        const SizedBox(height: AppSizes.sm),
                        InputTextfield(
                          controller: _houseNoController,
                          hintText: 'Enter house number',
                          icon: Icons.home_rounded,
                          validator: Validators.validateHouseNo,
                          keyboardType: TextInputType.text,
                          maxLength: 20,
                        ),
                        const SizedBox(height: AppSizes.lg),

                        // Note Field (Optional)
                        _buildLabel('Delivery Note'),
                        const SizedBox(height: AppSizes.sm),
                        InputTextfield(
                          controller: _noteController,
                          hintText: 'Add delivery instructions (optional)',
                          icon: Icons.note_rounded,
                          validator: Validators.validateNote,
                          keyboardType: TextInputType.multiline,
                          maxLength: 200,
                          maxLines: 3,
                        ),
                        const SizedBox(height: AppSizes.xl),

                        // Submit Button
                        CustomButton(
                          text: isCreating ? 'Add Address' : 'Update Address',
                          onPressed: _handleSubmit,
                          isLoading: isLoading,
                          loadingText: isCreating
                              ? 'Adding address...'
                              : 'Updating address...',
                        ),
                      ],
                    ),
                  ),
                )
                .animate()
                .fadeIn(duration: 400.ms, delay: 100.ms)
                .slideY(begin: 0.1, end: 0),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.txtSecondary.withValues(alpha: 0.8),
      ),
    );
  }
}
