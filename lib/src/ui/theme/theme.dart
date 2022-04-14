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
    // fontFamily: myFontFamily,
  );


  static const TextStyle greyBodyText =  TextStyle(color: Colors.grey);
}
