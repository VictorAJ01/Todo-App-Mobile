import 'package:flutter/material.dart';

class MyFormTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;

  const MyFormTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        contentPadding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF979797),
          ),
        ),
        prefix: const Padding(
          padding: EdgeInsets.only(left: 10),
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
      style: const TextStyle(color: Colors.white),
    );
  }
}
