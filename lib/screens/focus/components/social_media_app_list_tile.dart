import 'package:flutter/material.dart';

import 'social_media_app_card.dart';

class SocialMediaApplicationsListView extends StatelessWidget {
  const SocialMediaApplicationsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Applications',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Lato',
            color: Color(0xDDFFFFFF),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SocialMediaApplicationCard(
          leadingSvgPath: 'svgs/instagram.svg',
          title: 'Instagram',
          subtitle: 'You spent 4h on Instagram today',
        ),
        SizedBox(
          height: 16.0,
        ),
        SocialMediaApplicationCard(
          leadingSvgPath: 'svgs/twitter.svg',
          title: 'Twitter',
          subtitle: 'You spent 3h on Twitter today',
        ),
        SizedBox(
          height: 16.0,
        ),
        SocialMediaApplicationCard(
          leadingSvgPath: 'svgs/Facebook.svg',
          title: 'Facebook',
          subtitle: 'You spent 1h on Facebook today',
        ),
        SizedBox(
          height: 16.0,
        ),
        SocialMediaApplicationCard(
          leadingSvgPath: 'svgs/telegram.svg',
          title: 'Telegram',
          subtitle: 'You spent 30m on Telegram today',
        ),
        SizedBox(
          height: 16.0,
        ),
        SocialMediaApplicationCard(
          leadingSvgPath: 'svgs/gmail.svg',
          title: 'Gmail',
          subtitle: 'You spent 45m on Gmail today',
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
