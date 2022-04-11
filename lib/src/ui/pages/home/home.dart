import 'package:flutter/material.dart';

import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title:
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            // IconButton(
            //     icon: const Icon(Icons.arrow_back_ios), onPressed: () {}),
             SizedBox(width: 80),
            Text(
              'Mohamed Easwy',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          const SizedBox(width: 20),
          TextButton(onPressed: () {}, child: const Text('Skills')),
          const SizedBox(width: 20),
          TextButton(onPressed: () {}, child: const Text('Skills')),
          const SizedBox(width: 20),
          TextButton(onPressed: () {}, child: const Text('Skills')),
          const SizedBox(width: 20),
          TextButton(onPressed: () {}, child: const Text('Skills')),
          const SizedBox(width: 80),
        ],
      ),
      body: const BuildHomeBody(),
    );
  }
}
