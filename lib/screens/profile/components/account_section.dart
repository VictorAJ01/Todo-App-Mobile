import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../components/profile_list_view.dart';
import 'change_name_modal.dart';
import 'change_password_modal.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
