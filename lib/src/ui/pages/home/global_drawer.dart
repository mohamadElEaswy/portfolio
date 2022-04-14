import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../core/routs/navigation_methods.dart';
import '../../../core/routs/routs_list.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: actionsList(context),
          ),
        ),
      ),
    );
  }
}

List<Widget> actionsList(BuildContext context) => [
      TextButton(onPressed: () {}, child: const Text('Home')),
      const SizedBox(height: 20),
      TextButton(onPressed: () {}, child: const Text('My C.V')),
      const SizedBox(height: 20),
      TextButton(
          onPressed: () => NavigationMethods.navTo(
              navigateTo: NamedRouts.myWork, context: context),
          child: const Text('My Work')),
      const SizedBox(height: 20),
      TextButton(
          onPressed: () => NavigationMethods.navTo(
              navigateTo: NamedRouts.contactInformation, context: context),
          child: const Text('Contact information')),
      const SizedBox(height: 20),
      IconButton(
          icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
              ? Icons.dark_mode
              : Icons.light_mode),
          onPressed: () {
            MyApp.themeNotifier.value =
                MyApp.themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
          }),
    ];
