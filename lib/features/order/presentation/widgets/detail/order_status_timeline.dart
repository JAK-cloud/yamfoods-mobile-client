import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../../../app/theme/app_colors.dart';
import '../../../../../app/theme/app_sizes.dart';
import '../../../../../app/theme/app_text_styles.dart';
import '../../../../../core/enums/order_status.dart';
import '../../../../../core/enums/order_type.dart';
import '../../../domain/entities/order.dart';

/// Order status timeline widget displaying the progress of an order.
///
/// Stages depend on order type:
/// - Delivery: pending → confirmed → preparing → ready → out_for_delivery → delivered
/// - Pickup: pending → confirmed → preparing → ready → completed
/// - Dining: pending → confirmed → preparing → ready → served
/// When cancelled/failed: only Pending → Cancelled/Failed (2 steps).
class OrderStatusTimeline extends StatelessWidget {
  final Orderr order;

  const OrderStatusTimeline({super.key, required this.order});

  static const List<OrderStatus> _deliveryStages = [
    OrderStatus.pending,
    OrderStatus.confirmed,
    OrderStatus.preparing,
    OrderStatus.ready,
    OrderStatus.outForDelivery,
    OrderStatus.delivered,
  ];

  static const List<OrderStatus> _pickupStages = [
    OrderStatus.pending,
    OrderStatus.confirmed,
    OrderStatus.preparing,
    OrderStatus.ready,
    OrderStatus.completed,
  ];

  static const List<OrderStatus> _diningStages = [
    OrderStatus.pending,
    OrderStatus.confirmed,
    OrderStatus.preparing,
    OrderStatus.ready,
    OrderStatus.served,
  ];

  List<OrderStatus> _getStages(OrderStatus currentStatus, OrderType orderType) {
    if (currentStatus == OrderStatus.cancelled ||
        currentStatus == OrderStatus.failed) {
      return [OrderStatus.pending, currentStatus];
    }
    return switch (orderType) {
      OrderType.delivery => _deliveryStages,
      OrderType.pickup => _pickupStages,
      OrderType.dining => _diningStages,
    };
  }

  @override
  Widget build(BuildContext context) {
    final currentStatus = order.status.toOrderStatus();
    final orderType = order.type.toOrderType();
    final isTerminalState =
        currentStatus == OrderStatus.cancelled ||
        currentStatus == OrderStatus.failed;
    final stages = _getStages(currentStatus, orderType);

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
              itemCount: stages.length,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                final stage = stages[index];
                final stageStatus = _getStageStatus(stage, currentStatus, stages);

                // Cancelled/failed: only 2 steps; step 1 is error content
                if (isTerminalState && index == 1) {
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
                }

                return Padding(
                  padding: EdgeInsets.only(
                    left: AppSizes.md,
                    top: index == 0 ? 0 : AppSizes.sm,
                    bottom: index == stages.length - 1 ? 0 : AppSizes.sm,
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
                              ? stage.color
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
                final stage = stages[index];
                final stageStatus = _getStageStatus(stage, currentStatus, stages);

                // Cancelled/failed: step 1 is error indicator
                if (isTerminalState && index == 1) {
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
                final stage = stages[index];
                final stageStatus = _getStageStatus(stage, currentStatus, stages);
                final nextStageStatus = index < stages.length - 1
                    ? _getStageStatus(stages[index + 1], currentStatus, stages)
                    : StageStatus.upcoming;

                // Cancelled/failed: red connector from pending to error step.
                // With ConnectionDirection.before, the line between step 0 and 1 is built at index 1.
                if (isTerminalState) {
                  if (index == 1) {
                    return SolidLineConnector(
                      color: Colors.red.withValues(alpha: 0.3),
                      thickness: 2,
                    );
                  }
                  return const SizedBox.shrink();
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

  /// Determines the status of a stage based on current order status and the active stages list.
  StageStatus _getStageStatus(
    OrderStatus stage,
    OrderStatus currentStatus,
    List<OrderStatus> stages,
  ) {
    final isTerminalState =
        currentStatus == OrderStatus.cancelled ||
        currentStatus == OrderStatus.failed;

    // Cancelled/failed: only 2 steps — pending (completed), then error (active)
    if (isTerminalState) {
      final stageIndex = stages.indexOf(stage);
      if (stageIndex == 0) return StageStatus.completed;
      if (stageIndex == 1) return StageStatus.active;
      return StageStatus.upcoming;
    }

    final stageIndex = stages.indexOf(stage);
    var currentIndex = stages.indexOf(currentStatus);
    // completed/served are terminal success for pickup/dining; show as last stage done
    if (currentIndex == -1 &&
        (currentStatus == OrderStatus.completed ||
            currentStatus == OrderStatus.served)) {
      currentIndex = stages.length - 1;
    }

    if (currentIndex == -1 || stageIndex == -1) {
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
