import 'package:flutter/material.dart';

class ProfileListView extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final IconData trailingIcon;
  final VoidCallback onTap;

  const ProfileListView({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      leading: Icon(
        leadingIcon,
        color: const Color(0xDDFFFFFF),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 16.0,
          color: Color(0xDDFFFFFF),
        ),
      ),
      trailing: Icon(
        trailingIcon,
        color: const Color(0xDDFFFFFF),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 2.0,
      ),
      horizontalTitleGap: 0,
    );
  }
}
