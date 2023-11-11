import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../components/profile_list_view.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 14.0,
            color: Color(0xFFAFAFAF),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        ProfileListView(
          leadingIcon: Iconsax.setting_2,
          title: 'App Settings',
          trailingIcon: Iconsax.arrow_right_3,
          onTap: () {
            Navigator.pushNamed(context, '/setting');
          },
        ),
      ],
    );
  }
}
