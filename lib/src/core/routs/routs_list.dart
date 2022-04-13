import 'package:flutter/material.dart';
import 'package:portfolio/src/ui/pages/home/home.dart';

import '../../ui/pages/contact_information/contact_information_page.dart';
import '../../ui/pages/my_work/my_work_page.dart';

Map<String, Widget Function(BuildContext)> routs = {
  NamedRouts.home: (context) => const HomePage(),
  NamedRouts.myWork: (context) => const MyWorkPage(),
  NamedRouts.contactInformation: (context) => const ContactInformationPage(),

  // cartScreen: (context) => CartScreen()
};

class NamedRouts {
  static const String home = '/';
  static const String myWork = '/my_work';
  static const String contactInformation = '/contact_information';
}
