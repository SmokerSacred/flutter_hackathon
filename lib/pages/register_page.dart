import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/my_button.dart';
import 'package:futter_hackathon/Components/textfields.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing using controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final genderController = TextEditingController();

  //sign user in
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 35),

                //logo
                Image.asset(
                  'lib/images/icon.png', // Update the asset path accordingly
                  height: 150,
                ),

                const SizedBox(height: 25),

                //welcome back message
                const Text(
                  'Time to create your space. Sign up.',
                  style: TextStyle(
                    color: Color(0xFF080808),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                //textfield name
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                MyTextField(
                  controller: emailController,
                  hintText: 'email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //textfield password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //textfield Confirm password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Confirm password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //textfield Gender
                MyTextField(
                  controller: genderController,
                  hintText: 'Your gender',
                  obscureText: true,
                ),

                const SizedBox(height: 40),

                //sign in button
                MyButton(
                  text: 'Sign Up',
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                ),

                const SizedBox(height: 40),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Color(0xFF080808)),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Login Now',
                        style: TextStyle(
                            color: Color(0xFF009B8D),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
