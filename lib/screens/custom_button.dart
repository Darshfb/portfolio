import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    required this.height,
    required this.width,
    required this.text,
    this.backgroundColor,
  }) : super(key: key);

  final void Function()? onPressed;
  final double height;
  final double width;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: backgroundColor,
      textColor: Colors.white,
      height: height,
      minWidth: width,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
          side: const BorderSide(
            color: Colors.white,
            width: 1.0,
          )),
      child: Text(text),
    );
  }
}
