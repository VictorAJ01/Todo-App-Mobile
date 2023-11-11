import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FocusBarChart extends StatelessWidget {
  const FocusBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Overview',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20.0,
                color: Color(0xDDFFFFFF),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF555555),
                ),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'This Week',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12.0,
                      color: Color(0xDDFFFFFF),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Iconsax.arrow_down_1,
                    size: 16.0,
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
