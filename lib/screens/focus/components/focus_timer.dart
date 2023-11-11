import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FocusTimer extends StatefulWidget {
  const FocusTimer({super.key});

  @override
  State<FocusTimer> createState() => _FocusTimerState();
}

class _FocusTimerState extends State<FocusTimer> {
  double percent = 0.505;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircularPercentIndicator(
            radius: 90.0,
            lineWidth: 12.0,
            percent: percent,
            progressColor: const Color(0xFF8687E7),
            backgroundColor: const Color(0xFF555555),
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              formatDuration(percent * 60 * 60),
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w500,
                color: Color(0xDDFFFFFF),
              ),
            ),
          ),
          const SizedBox(
            height: 18.5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "While your focus mode is on, all of your notifications will be off",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Lato',
                color: Color(0xDDFFFFFF),
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 48,
            width: 160,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF8875FF),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Stop Focusing',
                style: TextStyle(
                  fontFamily:
                      'Lato', // if (_formKey.currentState!.validate()) {}
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String formatDuration(double seconds) {
    Duration duration = Duration(seconds: seconds.round());
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }
}
