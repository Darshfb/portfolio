import 'package:flutter/material.dart';

class IconContact extends StatelessWidget {
  const IconContact({Key? key, this.onPressed, required this.icon})
      : super(key: key);
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
        ));
  }
}
