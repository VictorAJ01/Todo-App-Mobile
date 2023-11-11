import 'package:flutter/material.dart';

class OverviewDropDownButton extends StatefulWidget {
  const OverviewDropDownButton({Key? key}) : super(key: key);

  @override
  _OverviewDropDownButtonState createState() => _OverviewDropDownButtonState();
}

class _OverviewDropDownButtonState extends State<OverviewDropDownButton> {
  String dropdownValue = 'This Week';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_downward,
        size: 16,
        color: Color(0xDD000000),
      ),
      elevation: 16,
      style: const TextStyle(color: Color(0xDD000000)),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Color(0xDD000000),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      onChanged: (String? value) {
        if (value != null) {
          setState(() {
            dropdownValue = value;
          });
        }
      },
      items: ['This Week', 'Last Week']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// OverviewDropDownButton