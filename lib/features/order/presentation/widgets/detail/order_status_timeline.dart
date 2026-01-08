import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../app/theme/app_text_styles.dart';
import '../../../../../core/enums/order_status.dart';
import '../../../domain/entities/order.dart';

/// Order status timeline widget displaying the progress of an order.
///
/// Shows all stages: pending, confirmed, preparing, ready, outForDelivery, delivered.
/// Highlights the current stage based on order status.
/// For cancelled/failed orders, shows error state at the last completed stage.
class OrderStatusTimeline extends StatelessWidget {
  final Orderr order;

  const OrderStatusTimeline({super.key, required this.order});

  // Define the 6 active stages in order
  static const List<OrderStatus> _activeStages = [
    OrderStatus.pending,
    OrderStatus.confirmed,
    OrderStatus.preparing,
    OrderStatus.ready,
    OrderStatus.outForDelivery,
    OrderStatus.delivered,
  ];

  @override
  Widget build(BuildContext context) {
    final currentStatus = order.status.toOrderStatus();
    final isTerminalState =
        currentStatus == OrderStatus.cancelled ||
        currentStatus == OrderStatus.failed;

    return Container(
      padding: EdgeInsets.all(AppSizes.lg),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(
          color: AppColors.grey.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Status',
            style: AppTextStyles.h5.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.txtPrimary,
            ),
          ),
          SizedBox(height: AppSizes.lg),

          Timeline.tileBuilder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            theme: TimelineThemeData(
              direction: Axis.vertical,
              // nodePosition: 0.0, // Align indicator to left edge if you want
               //to align the indicator to the left edge and don't want altrnate
               // opposit direction display
              connectorTheme: const ConnectorThemeData(
                thickness: 2.0,
                space: 16.0,
              ),
              indicatorTheme: const IndicatorThemeData(size: 28.0),
            ),
            builder: TimelineTileBuilder.connected(
              connectionDirection: ConnectionDirection.before,
              itemCount: isTerminalState
                  ? 3 // Show: pending, confirmed, error for terminal states
                  : _activeStages.length,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                final stage = _activeStages[index];
                final stageStatus = _getStageStatus(stage, currentStatus);

                // For terminal states, show error message instead of stage info after last completed
                if (isTerminalState) {
                  final lastCompletedIndex = 1; // confirmed is last completed
                  if (index == lastCompletedIndex + 1) {
                    // Show error message here
                    return Padding(
                      padding: EdgeInsets.only(
                        left: AppSizes.md,
                        top: AppSizes.sm,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            currentStatus.name,
                            style: AppTextStyles.bodyLarge.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: AppSizes.xs),
                          Text(
                            currentStatus.description,
                            style: AppTextStyles.bodySmall.copyWith(
                              color: Colors.red.withValues(alpha: 0.8),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (index > lastCompletedIndex + 1) {
                    // Hide content after error for terminal states
                    return const SizedBox.shrink();
                  }
                }

                return Padding(
                  padding: EdgeInsets.only(
                    left: AppSizes.md,
                    top: index == 0 ? 0 : AppSizes.sm,
                    bottom: index == _activeStages.length - 1 ? 0 : AppSizes.sm,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        stage.name,
                        style: AppTextStyles.bodyLarge.copyWith(
                          color:
                              stageStatus == StageStatus.active ||
                                  stageStatus == StageStatus.completed
                              ? AppColors.txtPrimary
                              : AppColors.grey,
                          fontWeight: stageStatus == StageStatus.active
                              ? FontWeight.w700
                              : FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: AppSizes.xs),
                      Text(
                        stage.description,
                        style: AppTextStyles.bodySmall.copyWith(
                          color: stageStatus == StageStatus.upcoming
                              ? AppColors.grey
                              : AppColors.txtSecondary,
                        ),
                      ),
                    ],
                  ),
                );
              },
              indicatorBuilder: (context, index) {
                final stage = _activeStages[index];
                final stageStatus = _getStageStatus(stage, currentStatus);

                // Show error indicator after last completed stage for terminal states
                if (isTerminalState) {
                  final lastCompletedIndex = 1; // confirmed is last completed
                  if (index == lastCompletedIndex + 1) {
                    // Show error indicator here
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.red, width: 3),
                      ),
                      child: const Icon(
                        Icons.cancel,
                        color: AppColors.white,
                        size: 16,
                      ),
                    );
                  } else if (index > lastCompletedIndex + 1) {
                    // Hide indicators after error for terminal states
                    return const SizedBox.shrink();
                  }
                }

                switch (stageStatus) {
                  case StageStatus.completed:
                    // Completed: green checkmark
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: AppColors.white,
                        size: 16,
                      ),
                    );
                  case StageStatus.active:
                    // Active: colored indicator with icon
                    return Container(
                      decoration: BoxDecoration(
                        color: stage.color,
                        shape: BoxShape.circle,
                        border: Border.all(color: stage.color, width: 3),
                        boxShadow: [
                          BoxShadow(
                            color: stage.color.withValues(alpha: 0.3),
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(stage.icon, color: AppColors.white, size: 16),
                    );
                  case StageStatus.upcoming:
                    // Upcoming: outlined gray
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.grey.withValues(alpha: 0.3),
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        stage.icon,
                        color: AppColors.grey.withValues(alpha: 0.3),
                        size: 16,
                      ),
                    );
                }
              },
              connectorBuilder: (context, index, connectorType) {
                final stage = _activeStages[index];
                final stageStatus = _getStageStatus(stage, currentStatus);
                final nextStageStatus = index < _activeStages.length - 1
                    ? _getStageStatus(_activeStages[index + 1], currentStatus)
                    : StageStatus.upcoming;

                // For terminal states, show red connector before error indicator
                if (isTerminalState) {
                  final lastCompletedIndex = 1; // confirmed is last completed
                  if (index == lastCompletedIndex) {
                    // Red connector before error
                    return SolidLineConnector(
                      color: Colors.red.withValues(alpha: 0.3),
                      thickness: 2,
                    );
                  } else if (index > lastCompletedIndex) {
                    // Hide connectors after error
                    return const SizedBox.shrink();
                  }
                }

                // Solid line for completed and active stages
                if (stageStatus == StageStatus.completed ||
                    (stageStatus == StageStatus.active &&
                        nextStageStatus != StageStatus.completed)) {
                  return SolidLineConnector(color: Colors.green, thickness: 2);
                }

                // Dashed line for upcoming stages
                return DashedLineConnector(
                  color: AppColors.grey.withValues(alpha: 0.3),
                  thickness: 2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Determines the status of a stage based on current order status.
  StageStatus _getStageStatus(OrderStatus stage, OrderStatus currentStatus) {
    final isTerminalState =
        currentStatus == OrderStatus.cancelled ||
        currentStatus == OrderStatus.failed;

    // For terminal states, we can't know exactly which stage was reached
    // So we'll show all stages up to confirmed as completed (reasonable default)
    // and show error at the end
    if (isTerminalState) {
      final stageIndex = _activeStages.indexOf(stage);
      // Show first 2 stages (pending, confirmed) as completed for terminal orders
      // This is a reasonable assumption - cancelled orders usually at least reached confirmed
      if (stageIndex <= 1) {
        return StageStatus.completed;
      }
      return StageStatus.upcoming;
    }

    final currentIndex = _activeStages.indexOf(currentStatus);
    final stageIndex = _activeStages.indexOf(stage);

    if (currentIndex == -1 || stageIndex == -1) {
      // Status not in active stages, treat as upcoming
      return StageStatus.upcoming;
    }

    if (stageIndex < currentIndex) {
      return StageStatus.completed;
    } else if (stageIndex == currentIndex) {
      return StageStatus.active;
    } else {
      return StageStatus.upcoming;
    }
  }
}

/// Represents the status of a timeline stage.
enum StageStatus { completed, active, upcoming }
