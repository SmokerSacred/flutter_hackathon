import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/square_tile.dart';

class MyHomePageReal extends StatefulWidget {
  const MyHomePageReal({super.key});

  @override
  State<MyHomePageReal> createState() => _MyHomePageRealState();
}

class _MyHomePageRealState extends State<MyHomePageReal> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //Search bar
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFFe5e5e6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF9b9c9d)),
                    SizedBox(width: 10),
                    Text(
                      'Search',
                      style: TextStyle(color: Color(0xFF9b9c9d), fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // Recent reports header
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Recent Posts",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Recent reports
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SquareTile(imagePath: 'lib/images/Hackerview.jpeg')],
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
