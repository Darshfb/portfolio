import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
  }) : super(key: key);
  final void Function() onTap;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
      ),

      child: TextButton(
          onPressed: onTap,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }
}
