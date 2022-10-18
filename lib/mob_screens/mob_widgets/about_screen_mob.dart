import 'package:flutter/material.dart';
import 'package:portfolio/mob_screens/mob_widgets/content_about_me_mob.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/content_about_me.dart';

class AboutScreenMob extends StatelessWidget {
  const AboutScreenMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFF443f3f), Color(0xFF64b3f4)]),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Image(
                    image: AssetImage(
                      'assets/images/mine.png',
                    ),
                    height: 500,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.teal.shade300,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'This portfolio is Created By Mostafa Mahmoud',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Pacifico',
                                  fontSize: 30.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Responsive(
                web: ContentAboutMe(),
                tablet: ContentAboutMe(),
                mobile: ContentAboutMeMob(),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
