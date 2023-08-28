import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dynamicText = 'Welcome to the Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      body: const Center(
        child: Text(
          'text',
          style: TextStyle(fontSize: 50),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF009b8d),
        unselectedItemColor: const Color(0xFF9b9c9d),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outlined), label: 'post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'profile'),
        ],
      ),
    );
  }
}
