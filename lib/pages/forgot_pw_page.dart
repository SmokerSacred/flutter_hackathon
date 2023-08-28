import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/my_button.dart';
import 'package:futter_hackathon/Components/textfields.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF323334),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Image.asset(
            'lib/images/icon.png', // Update the asset path accordingly
            height: 150,
          ),

          const SizedBox(height: 30),

          const Text('Forgot your Password'),

          const SizedBox(height: 30),

          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false),
          ),

          const SizedBox(height: 30),

          // submit button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: MyButton(
              onTap: () {},
              text: 'Reset Password',
            ),
          )
        ],
      ),
    );
  }
}
