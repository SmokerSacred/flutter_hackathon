import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/my_button.dart';
import 'package:futter_hackathon/Components/textfields.dart';
import 'forgot_pw_page.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing using controller
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  //sign user in
  void signUserIn() {}

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
                const SizedBox(height: 50),

                // logo
                Image.asset(
                  'lib/images/icon.png', // Update the asset path accordingly
                  height: 150,
                ),

                const SizedBox(height: 50),

                //welcome back message
                const Text(
                  'Let\'s pick up where you left off.',
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

                //textfield password
                MyTextField(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ForgotPasswordPage();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Color(0xFF009B8D),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  text: 'Sign In',
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                ),

                const SizedBox(height: 50),

                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member? ',
                      style: TextStyle(color: Color(0xFF080808)),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        'Register Now',
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
