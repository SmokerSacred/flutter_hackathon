import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String headerText; // New property for the header
  final String textSnippet;

  const SquareTile({
    Key? key,
    required this.imagePath,
    required this.headerText,
    required this.textSnippet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFe5e5e6)),
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFffffff),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 310,
          ),
          const SizedBox(height: 20),
          Text(
            headerText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            textSnippet,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
