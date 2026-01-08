// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_sizes.dart';
import '../../../../app/theme/app_text_styles.dart';
import '../../../../core/snacks/info_snack_bar.dart';
import '../providers/checkout_notifier.dart';

class ScheduleSection extends ConsumerWidget {
  final int branchId;
  final TimeOfDay workingHourStart;
  final TimeOfDay workingHourEnd;
  final int maxDaysAhead;

  const ScheduleSection({
    super.key,
    required this.branchId,
    this.workingHourStart = const TimeOfDay(hour: 9, minute: 0),
    this.workingHourEnd = const TimeOfDay(hour: 22, minute: 0),
    this.maxDaysAhead = 7,
  });

  String _formatDateTime(DateTime dateTime) {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    final month = months[dateTime.month - 1];
    final day = dateTime.day;
    final year = dateTime.year;
    final hour = dateTime.hour;
    final minute = dateTime.minute;
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
    final displayMinute = minute.toString().padLeft(2, '0');

    return '$month $day, $year • $displayHour:$displayMinute $period';
  }

  bool _isWithinWorkingHours(DateTime dateTime) {
    final time = TimeOfDay.fromDateTime(dateTime);
    final timeInMinutes = time.hour * 60 + time.minute;
    final startInMinutes = workingHourStart.hour * 60 + workingHourStart.minute;
    final endInMinutes = workingHourEnd.hour * 60 + workingHourEnd.minute;

    return timeInMinutes >= startInMinutes && timeInMinutes <= endInMinutes;
  }

  String _getWorkingHoursText() {
    final startHour = workingHourStart.hour > 12
        ? '${workingHourStart.hour - 12}:${workingHourStart.minute.toString().padLeft(2, '0')} PM'
        : '${workingHourStart.hour == 0 ? 12 : workingHourStart.hour}:${workingHourStart.minute.toString().padLeft(2, '0')} AM';
    final endHour = workingHourEnd.hour > 12
        ? '${workingHourEnd.hour - 12}:${workingHourEnd.minute.toString().padLeft(2, '0')} PM'
        : '${workingHourEnd.hour == 0 ? 12 : workingHourEnd.hour}:${workingHourEnd.minute.toString().padLeft(2, '0')} AM';

    return '$startHour - $endHour';
  }

  Future<void> _selectDateTime(BuildContext context, WidgetRef ref) async {
    final checkoutState = ref.read(checkoutProvider(branchId));
    final now = DateTime.now();

    // Default to next hour if no scheduled time, or use existing
    DateTime initialDate;
    if (checkoutState.scheduledAt != null) {
      initialDate = checkoutState.scheduledAt!;
    } else {
      // Set to next hour, or working hour start if next hour is before it
      final nextHour = now.add(const Duration(hours: 1));
      final nextHourTime = TimeOfDay.fromDateTime(nextHour);
      final nextHourInMinutes = nextHourTime.hour * 60 + nextHourTime.minute;
      final startInMinutes =
          workingHourStart.hour * 60 + workingHourStart.minute;

      if (nextHourInMinutes < startInMinutes) {
        // If next hour is before working hours, set to working hour start today
        initialDate = DateTime(
          now.year,
          now.month,
          now.day,
          workingHourStart.hour,
          workingHourStart.minute,
        );
        // If that's in the past, set to tomorrow
        if (initialDate.isBefore(now)) {
          initialDate = initialDate.add(const Duration(days: 1));
        }
      } else {
        initialDate = nextHour;
      }
    }

    // Select date first
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: maxDaysAhead)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: AppColors.white,
              surface: AppColors.white,
              onSurface: AppColors.txtPrimary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate == null) return;

    // Select time
    final initialTime =
        checkoutState.scheduledAt != null &&
            checkoutState.scheduledAt!.year == pickedDate.year &&
            checkoutState.scheduledAt!.month == pickedDate.month &&
            checkoutState.scheduledAt!.day == pickedDate.day
        ? TimeOfDay.fromDateTime(checkoutState.scheduledAt!)
        : TimeOfDay.fromDateTime(initialDate);

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: AppColors.white,
              surface: AppColors.white,
              onSurface: AppColors.txtPrimary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime == null) return;

    // Combine date and time
    final scheduledDateTime = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    // Validate: must be in the future
    if (scheduledDateTime.isBefore(DateTime.now())) {
      InfoSnackBar.show(
        context,
        message: 'Please select a future date and time',
      );
      return;
    }

    // Validate: must be within working hours
    if (!_isWithinWorkingHours(scheduledDateTime)) {
      InfoSnackBar.show(
        context,
        message: 'Please select a time between ${_getWorkingHoursText()}',
      );
      return;
    }

    // Update checkout state
    ref
        .read(checkoutProvider(branchId).notifier)
        .setScheduledAt(scheduledDateTime);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkoutState = ref.watch(checkoutProvider(branchId));
    final isScheduled = checkoutState.scheduledAt != null;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: AppSizes.xs,
      ),
      padding: EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with toggle
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.schedule_outlined,
                          size: 20,
                          color: AppColors.txtPrimary,
                        ),
                        SizedBox(width: AppSizes.xs),
                        Text(
                          'Schedule Order',
                          style: AppTextStyles.bodyLarge.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.txtPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Working hours: ${_getWorkingHoursText()}',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.txtSecondary,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Switch(
                value: isScheduled,
                onChanged: (value) {
                  if (value) {
                    // Enable scheduling - open date/time picker
                    _selectDateTime(context, ref);
                  } else {
                    // Disable scheduling - clear scheduled time
                    ref
                        .read(checkoutProvider(branchId).notifier)
                        .setScheduledAt(null);
                  }
                },
                activeColor: AppColors.primary,
              ),
            ],
          ),
          // Show selected date/time if scheduled
          if (isScheduled && checkoutState.scheduledAt != null) ...[
            SizedBox(height: AppSizes.sm),
            InkWell(
              onTap: () => _selectDateTime(context, ref),
              borderRadius: BorderRadius.circular(AppSizes.radius / 2),
              child: Container(
                padding: EdgeInsets.all(AppSizes.sm),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(AppSizes.radius / 2),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 18,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: AppSizes.xs),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Scheduled for',
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.txtSecondary,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            _formatDateTime(checkoutState.scheduledAt!),
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.edit_outlined,
                      size: 18,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
