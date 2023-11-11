import 'package:flutter/material.dart';

import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/calendar/calendar_screen.dart';
import '../screens/focus/focus_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 67,
        height: 67,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF8687E7),
          elevation: 0,
          child: const Icon(
            Iconsax.add,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          height: 90,
          color: const Color(0xFF363636),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBottomNavItem(
                    controller, 'Home', Iconsax.home, Iconsax.home_25),
                _buildBottomNavItem(controller, 'Calendar', Iconsax.calendar_1,
                    Iconsax.calendar_25),
                const SizedBox(
                  width: 30,
                ),
                _buildBottomNavItem(
                    controller, 'Focus', Iconsax.clock, Iconsax.clock5),
                _buildBottomNavItem(
                    controller, 'Profile', Iconsax.user, Iconsax.user),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }

  Widget _buildBottomNavItem(NavigationController controller, String label,
      IconData icon, IconData? selectedIcon) {
    return InkWell(
      onTap: () {
        final index = controller.getDestinationIndexByLabel(label);
        controller.selectedIndex.value = index;
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              controller.selectedIndex.value ==
                      controller.getDestinationIndexByLabel(label)
                  ? selectedIcon
                  : icon,
              color: const Color(0xDDFFFFFF),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Lato',
                color: Color(0xDDFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const CalendarScreen(),
    FocusScreen(),
    const ProfileScreen(),
  ];

  int getDestinationIndexByLabel(String label) {
    // Implement logic to get the index based on the label
    switch (label) {
      case 'Home':
        return 0;
      case 'Calendar':
        return 1;
      case 'Focus':
        return 2;
      case 'Profile':
        return 3;
      default:
        return 0;
    }
  }
}
