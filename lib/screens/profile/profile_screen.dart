import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'components/account_section.dart';
import 'components/setting_section.dart';
import 'components/tasks_action_buttons.dart';
import 'components/up_todo_section.dart';
import 'components/user_profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 20.0,
            color: Color(0xDDFFFFFF),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          children: [
            const SizedBox(
              height: 10,
            ),
            const UserProfileImage(),
            const SizedBox(height: 25),
            const TasksActionButtons(),
            const SizedBox(height: 32.0),
            const SettingSection(),
            const SizedBox(height: 20),
            const AccountSection(),
            const SizedBox(height: 20),
            const UpTodoSection(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                elevation: 0,
                alignment: Alignment.centerLeft,
              ),
              child: const Row(
                children: [
                  Icon(
                    Iconsax.logout,
                    color: Color(0xFFFF4949),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Text(
                    'Log out',
                    style: TextStyle(
                      color: Color(0xFFFF4949),
                      fontFamily: 'Lato',
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
