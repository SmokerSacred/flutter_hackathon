import 'package:flutter/material.dart';
import 'package:futter_hackathon/pages/real_homepage.dart';
import 'package:futter_hackathon/pages/user_page.dart';
import 'report_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MyHomePageReal(),
    const MyReport(),
    const UsersPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: const Color(0xFF009b8d),
        unselectedItemColor: const Color(0xFF9b9c9d),
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outlined,
                size: 50,
                color: Color(0xFF000000),
              ),
              label: 'post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'profile'),
        ],
      ),
    );
  }
}
