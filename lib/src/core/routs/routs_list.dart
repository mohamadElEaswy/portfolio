import 'package:flutter/material.dart';
import 'package:portfolio/src/ui/pages/home/home.dart';

Map<String, Widget Function(BuildContext)> routs = {
  NamedRouts.home: (context) => const HomePage(),

  // cartScreen: (context) => CartScreen()
};




class NamedRouts{
  static const String home = '';
}