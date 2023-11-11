import 'package:flutter/material.dart';

class FocusBarChart extends StatelessWidget {
  const FocusBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Overview',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20.0,
                color: Color(0xDDFFFFFF),
              ),
            ),
          ],
        )
      ],
    );
  }
}
