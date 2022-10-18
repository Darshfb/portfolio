import 'package:flutter/material.dart';
import 'package:portfolio/screens/custom_button.dart';
import 'package:portfolio/screens/custom_text_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF443f3f), Color(0xFF64b3f4)]),
        ),
        // color: Colors.teal.shade600,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(image: AssetImage('assets/images/logo.png')),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomAppBarButton(title: 'About', onTap: () {}),
                  CustomAppBarButton(title: 'Portfolio', onTap: () {}),
                  CustomAppBarButton(title: 'Contact', onTap: () {}),
                  const SizedBox(
                    width: 16.0,
                  ),
                  CustomButton(
                    text: 'Get Started',
                    onPressed: () {},
                    height: 40.0,
                    width: 150.0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
