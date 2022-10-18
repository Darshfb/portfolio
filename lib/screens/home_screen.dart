import 'package:flutter/material.dart';
import 'package:portfolio/widgets/content_about_me.dart';
import 'package:portfolio/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.teal,
      // backgroundColor: const Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          70,
        ),
        child: const CustomAppBar(),
      ),
      body: Container(
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
                const SizedBox(height: 30.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
