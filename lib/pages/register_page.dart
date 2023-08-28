import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/my_button.dart';
import 'package:futter_hackathon/Components/square_tile.dart';
import 'package:futter_hackathon/Components/textfields.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing using controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
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

                const SizedBox(height: 40),

                //sign in button
                MyButton(
                  text: 'Sign Up',
                  onTap: signUserUp,
                ),

                const SizedBox(height: 40),

                //or continue with
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFF323334),
                        ),
                      ),
                      Text(
                        'Or Continue with',
                        style: TextStyle(color: Color(0xFF080808)),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFF323334),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                //google
                const SquareTile(imagePath: 'lib/images/google.png'),

                const SizedBox(height: 20),

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
                      onTap: widget.onTap,
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
