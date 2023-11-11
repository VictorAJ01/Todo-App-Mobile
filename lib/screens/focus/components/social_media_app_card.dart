import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class SocialMediaApplicationCard extends StatelessWidget {
  final String leadingSvgPath;
  final String title;
  final String subtitle;

  const SocialMediaApplicationCard({
    Key? key,
    required this.leadingSvgPath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: SvgPicture.asset(
          leadingSvgPath,
          width: 32,
          height: 32,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 12.0,
          color: Colors.white,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 45.0,
            width: 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xFF979797),
            ),
            child: const VerticalDivider(
              color: Colors.transparent,
              thickness: 1.0,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Icon(
            Iconsax.info_circle,
            color: Color(0xDDFFFFFF),
          ),
        ],
      ),
      tileColor: const Color(0xFF4C4C4C),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 12.0,
      ),
      horizontalTitleGap: 5,
      dense: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}
