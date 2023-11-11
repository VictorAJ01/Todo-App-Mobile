import 'package:flutter/material.dart';

class TasksActionButtons extends StatelessWidget {
  const TasksActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            height: 58,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF363636),
                ),
              ),
              onPressed: () {
                print('10 Task left');
              },
              child: const Text(
                '10 Task left',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  color: Color(0xDDFFFFFF),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: SizedBox(
            height: 58,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF363636),
                ),
              ),
              onPressed: () {
                print('5 Task done');
              },
              child: const Text(
                '5 Task done',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  color: Color(0xDDFFFFFF),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
