import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import '../../components/profile_list_view.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Iconsax.arrow_left_2, color: Colors.white),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Color(0xDDFFFFFF),
            fontFamily: 'Lato',
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: ListView(
          children: [
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
              leadingIcon: Iconsax.brush_4,
              title: 'Change app color',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            ProfileListView(
              leadingIcon: Iconsax.text,
              title: 'Change app typography',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            ProfileListView(
              leadingIcon: Iconsax.language_square,
              title: 'Change app language',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Import',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 14.0,
                color: Color(0xFFAFAFAF),
              ),
            ),
            const SizedBox(height: 5),
            ProfileListView(
              leadingIcon: Iconsax.import_1,
              title: 'Import from Google calendar',
              trailingIcon: Iconsax.arrow_right_3,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
