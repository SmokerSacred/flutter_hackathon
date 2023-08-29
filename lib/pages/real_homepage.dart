import 'package:flutter/material.dart';

class MyHomePageReal extends StatefulWidget {
  const MyHomePageReal({super.key});

  @override
  State<MyHomePageReal> createState() => _MyHomePageRealState();
}

class _MyHomePageRealState extends State<MyHomePageReal> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children: [
        //Search bar
        Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Color(0xFFe5e5e6)),
            child: Row(
              children: [
                Text('Search'),
                Icon(Icons.search),
              ],
            ))
      ],
    );
  }
}
