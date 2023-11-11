import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../components/profile_list_view.dart';

class UpTodoSection extends StatelessWidget {
  const UpTodoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
    );
  }
}
