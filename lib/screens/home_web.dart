import 'package:flutter/material.dart';
import 'package:portfolio/widgets/content_about_me.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 3, child: ContentAboutMe()),
                Expanded(
                  flex: 2,
                  child: Column(
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
                        height: 30.0,
                      ),
                      Card(
                        color: Colors.teal.shade300,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 5.0,
                          ),
                          child: Text(
                            'This portfolio is Created By Mostafa Mahmoud',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Pacifico',
                                fontSize: 22.0),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
