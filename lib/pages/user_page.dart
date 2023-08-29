import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/my_button.dart';

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
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                //logo
                Image.asset(
                  'lib/images/icon.png',
                  height: 150,
                ),

                const SizedBox(height: 50),

                // User's name
                const Text(
                  'Name:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                    'John Doe'), // Replace with actual user's name from the database

                const SizedBox(height: 30),

                // User's email
                const Text(
                  'Email:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                    'johndoe@example.com'), // Replace with actual user's email

                const SizedBox(height: 30),

                // User's phone number
                const Text(
                  'Phone Number:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                    '+123 456 7890'), // Replace with actual user's phone number

                const SizedBox(height: 30),

                // User's location
                const Text(
                  'Location:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                    'City, Country'), // Replace with actual user's location

                const SizedBox(height: 50),

                // Logout button
                MyButton(
                  text: 'Logout',
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
        ))));
  }
}
