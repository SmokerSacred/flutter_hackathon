import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _MyUserPageState();
}

class _MyUserPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf5f5f5),
        body: Center(
          child: Text('User'),
        ),
        );
  }
}
