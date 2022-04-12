import 'package:flutter/material.dart';

class GlobalSizedBox extends StatelessWidget {
  const GlobalSizedBox({Key? key, width, height}) : super(key: key);

  final double width = 20;
  final double height = 20;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,height: height, );
  }
}
