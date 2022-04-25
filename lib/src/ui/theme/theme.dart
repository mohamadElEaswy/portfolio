import 'package:flutter/material.dart';

class MyAppTheme {
  static const String myFontFamily = 'Raleway';

  static ThemeData lightThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.blue,
    fontFamily: myFontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.blue),
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey[200]!,
          width: 1,
        ),
      ),
    ),
    drawerTheme: const DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: drawerBorderRadius,
      ),
    ),
  );

  static ThemeData darkThemeData = ThemeData(
    fontFamily: myFontFamily,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.white),
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey[200]!,
          width: 1,
        ),
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: drawerBorderRadius,
      ),
    ),
  );

  static const BorderRadius drawerBorderRadius = BorderRadius.only(
    topRight: cornerRadius,
    bottomRight: cornerRadius,
    topLeft: cornerRadius,
    bottomLeft: cornerRadius,
  );
  static const Radius cornerRadius = Radius.circular(20);
  static const TextStyle greyBodyText = TextStyle(color: Colors.grey);

  static const TextStyle projectTitleTextTheme = TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 22
  );
}
