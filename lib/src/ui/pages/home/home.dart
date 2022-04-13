import 'package:flutter/material.dart';

import '../../../core/routs/navigation_methods.dart';
import '../../../core/routs/routs_list.dart';
import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: const BuildHomeBody(),
    );
  }

  //TODO make reusable AppBar and make it responsive
  AppBar _buildAppBar(BuildContext context) => AppBar(
        // centerTitle: true,
        title: Row(
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
          TextButton(onPressed: () {}, child: const Text('Home')),
          const SizedBox(width: 20),
          TextButton(onPressed: () {}, child: const Text('My C.V')),
          const SizedBox(width: 20),
          TextButton(
              onPressed: () => NavigationMethods.navTo(
                  navigateTo: NamedRouts.myWork, context: context),
              child: const Text('My Work')),
          const SizedBox(width: 20),
          TextButton(
              onPressed: () {}, child: const Text('Contact information')),
          const SizedBox(width: 80),
        ],
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
            width: 1,
          ),
        ),
      );
}
