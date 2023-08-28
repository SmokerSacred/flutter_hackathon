import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFf5f5f5))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF323334))),
            fillColor: Color(0xFFe5e5e6),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFF9b9c9d))),
      ),
    );
  }
}
