import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import '../../components/profile_list_view.dart';
import 'change_name_modal.dart';
import 'change_password_modal.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            const SizedBox(height: 10),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20.0,
                      color: Color(0xDDFFFFFF),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('images/user-profile-image-01.png'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Martha Hays',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20.0,
                      color: Color(0xDDFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 58,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF363636),
                        ),
                      ),
                      onPressed: () {
                        print('10 Task left');
                      },
                      child: const Text(
                        '10 Task left',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                          color: Color(0xDDFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: SizedBox(
                    height: 58,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF363636),
                        ),
                      ),
                      onPressed: () {
                        print('5 Task done');
                      },
                      child: const Text(
                        '5 Task done',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16.0,
                          color: Color(0xDDFFFFFF),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 14.0,
                color: Color(0xFFAFAFAF),
              ),
            ),
            const SizedBox(height: 5),
            ProfileListView(
              leadingIcon: Iconsax.setting_2,
              title: 'App Settings',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Account',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 14.0,
                color: Color(0xFFAFAFAF),
              ),
            ),
            ProfileListView(
              leadingIcon: Iconsax.user,
              title: 'Change account name',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => ChangeNameModal(),
                );
              },
            ),
            ProfileListView(
              leadingIcon: Iconsax.key,
              title: 'Change account password',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => ChangePasswordModal(),
                );
              },
            ),
            ProfileListView(
              leadingIcon: Iconsax.camera,
              title: 'Change account Image',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              'Uptodo',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 14.0,
                color: Color(0xFFAFAFAF),
              ),
            ),
            ProfileListView(
              leadingIcon: Iconsax.menu,
              title: 'About US',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            ProfileListView(
              leadingIcon: Iconsax.info_circle,
              title: 'FAQ',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            ProfileListView(
              leadingIcon: Iconsax.flash_1,
              title: 'Help & Feedback',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            ProfileListView(
              leadingIcon: Iconsax.like_1,
              title: 'Support US',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
