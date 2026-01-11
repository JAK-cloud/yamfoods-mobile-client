import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../routes/auth_guard_helper.dart';
import '../routes/route_names.dart';
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart';

class BottomNavScreen extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavScreen({super.key, required this.navigationShell});

  @override
  ConsumerState<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends ConsumerState<BottomNavScreen> {
  // Map of tab indices to their corresponding routes
  static const Map<int, String> _tabRoutes = {
    0: RouteName.home, // Home
    1: RouteName.cart, // Cart (protected)
    2: RouteName.order, // Order (protected)
    3: RouteName.profile, // Profile (protected)
  };

  // Protected tab indices (require authentication)
  static const List<int> _protectedTabs = [1, 2, 3]; // Cart, Order, Profile

  Future<void> _onItemTapped(int index) async {
    // Check if this is a protected tab
    if (_protectedTabs.contains(index)) {
      final targetRoute = _tabRoutes[index]!;

      // Check authentication and show dialog if guest
      final canNavigate = await AuthGuardHelper.canNavigateToTab(
        context: context,
        ref: ref,
        targetRoute: targetRoute,
      );

      if (!canNavigate) {
        // User is guest and dialog was shown - don't navigate
        return;
      }
    }

    // User is authenticated or tab is public - proceed with navigation
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: widget.navigationShell),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory, // remove ripple
            splashColor: Colors.transparent, // remove splash color
            highlightColor: Colors.transparent, // remove highlight color
          ),
          child: BottomNavigationBar(
            currentIndex: widget.navigationShell.currentIndex,
            onTap: _onItemTapped,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.secondary,
            backgroundColor: AppColors.background,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: AppSizes.sm,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: AppSizes.sm,
              fontWeight: FontWeight.w400,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_alt),
                activeIcon: Icon(
                  CupertinoIcons.house_fill,
                  color: AppColors.primary,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart),
                activeIcon: Icon(
                  CupertinoIcons.cart_fill,
                  color: AppColors.primary,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_favorites_alt),
                activeIcon: Icon(
                  CupertinoIcons.square_favorites_alt_fill,
                  color: AppColors.primary,
                ),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                activeIcon: Icon(
                  CupertinoIcons.person_fill,
                  color: AppColors.primary,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    
  }
}
