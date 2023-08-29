import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFe5e5e6)),
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFffffff)),
      child: Image.asset(
        imagePath,
        height: 310,
      ),
    );
  }
}
