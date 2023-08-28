import 'package:flutter/material.dart';
import 'pages/login_or_register.dart';
import 'pages/Home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const LoginOrRegister(),
      routes: {
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
