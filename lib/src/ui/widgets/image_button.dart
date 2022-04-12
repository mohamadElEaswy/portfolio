import 'package:flutter/material.dart';

class GlobalImageButton extends StatelessWidget {
  const GlobalImageButton({Key? key, required this.image, required this.onPressed}) : super(key: key);
  final String image;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SizedBox(height: 40, width: 40, child: Image.asset(image)),
    );
  }
}
