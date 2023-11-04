import 'package:flutter/material.dart';

class MyFormTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyFormTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF979797),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF979797),
          ),
        ),
        fillColor: const Color(0xFF1D1D1D),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF535353),
        ),
      ),
    );
  }
}
