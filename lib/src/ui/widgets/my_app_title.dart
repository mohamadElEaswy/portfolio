import 'package:flutter/material.dart';

import '../pages/home/home.dart';
const String myName = 'Mohamed Easwy';
class MyAppTitle extends StatelessWidget {
  const MyAppTitle({Key? key, required this.width}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // IconButton(
        //     icon: const Icon(Icons.arrow_back_ios), onPressed: () {}),
        AppBarSizedBox(width: width),
        const Text(
          myName,
          style: TextStyle(color: Colors.blueAccent),
        ),
      ],
    );
  }
}
