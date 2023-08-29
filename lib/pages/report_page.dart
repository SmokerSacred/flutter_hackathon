import 'package:flutter/material.dart';
import 'package:futter_hackathon/Components/my_button.dart';
import 'package:futter_hackathon/Components/textfields.dart';

class MyReport extends StatefulWidget {
  const MyReport({super.key});

  @override
  State<MyReport> createState() => _MyReportState();
}

class _MyReportState extends State<MyReport> {
  final reportController = TextEditingController();
  final incedentController = TextEditingController();
  final descriptionController = TextEditingController();
  final locationController = TextEditingController();

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
                //logo
                Image.asset(
                  'lib/images/icon.png', // Update the asset path accordingly
                  height: 100,
                ),

                const SizedBox(height: 35),

                //type of report
                MyTextField(
                  controller: reportController,
                  hintText: 'Type of report',
                  obscureText: false,
                ),

                const SizedBox(height: 35),

                //incedent
                MyTextField(
                  controller: incedentController,
                  hintText: 'Incedent Title',
                  obscureText: false,
                ),

                const SizedBox(height: 35),

                //description
                MyTextField(
                  controller: descriptionController,
                  hintText: 'Description',
                  obscureText: false,
                ),

                const SizedBox(height: 35),

                //locatiom
                MyTextField(
                  controller: locationController,
                  hintText: 'Location',
                  obscureText: false,
                ),

                const SizedBox(height: 50),

                MyButton(
                  text: 'Report',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
