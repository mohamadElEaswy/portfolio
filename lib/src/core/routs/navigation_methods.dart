import 'package:flutter/cupertino.dart';

class NavigationMethods {
  static void navTo(
          {required String navigateTo, required BuildContext context}) =>
      Navigator.pushNamed(context, navigateTo);

  static void popNav(BuildContext context)=> Navigator.pop(context);
}
