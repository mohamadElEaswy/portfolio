import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../core/routs/navigation_methods.dart';
import '../../../core/routs/routs_list.dart';
import '../../widgets/my_app_title.dart';
import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    print(width.toString());
    return Scaffold(
      appBar: _buildAppBar(context, width),
      body: const BuildHomeBody(),
    );
  }

  AppBar _buildAppBar(BuildContext context, double width) => AppBar(
        // centerTitle: true,
        title: MyAppTitle(width: width),
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
              onPressed: () => NavigationMethods.navTo(
                  navigateTo: NamedRouts.contactInformation, context: context),
              child: const Text('Contact information')),
          const SizedBox(width: 20),
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
          AppBarSizedBox(width: width),
        ],
      );
}

class AppBarSizedBox extends StatelessWidget {
  const AppBarSizedBox({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: (width >= 830) ? 80 : 20);
  }
}
