import 'package:flutter/material.dart';

import 'components/focus_bar_chart.dart';
import 'components/focus_timer.dart';
import 'components/social_media_app_list_tile.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({super.key});

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            SizedBox(height: 10),
            FocusTimer(),
            SizedBox(
              height: 55.0,
            ),
            FocusBarChart(),
            SizedBox(
              height: 24,
            ),
            SocialMediaApplicationsListView(),
          ],
        ),
      ),
    );
  }
}
