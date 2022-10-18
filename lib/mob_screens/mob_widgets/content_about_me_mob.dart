import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/my_cv.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/icon_contact.dart';
import 'package:url_launcher/url_launcher.dart';



class ContentAboutMeMob extends StatelessWidget {
   const ContentAboutMeMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'This is',
          style: TextStyle(color: Colors.white, fontSize: 20.0, height: 1),
        ),
        const Text(
          'Mostafa \nMahmoud',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w800,
            height: 1,
          ),
        ),
        const Text(
          'A flutter developer ',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20.0,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: Text(
                'a with crazy programming passion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32.0,
        ),
        const Text(
          'Find me on',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            height: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconContact(
              icon: FontAwesomeIcons.github,
              onPressed: () {
                final Uri url = Uri.parse('https://github.com/Darshfb');
                launchUrl(url);
              },
            ),
            IconContact(
              icon: FontAwesomeIcons.linkedin,
              onPressed: () {
                final Uri url = Uri.parse('https://www.linkedin.com/in/mostafamahmoudaboads/');
                launchUrl(url);
              },
            ), IconContact(
              icon: FontAwesomeIcons.whatsapp,
              onPressed: () {
                final Uri url = Uri.parse(
                    'https://wa.me/+201006476494');
                launchUrl(url);
              },
            ),
            IconContact(
              icon: FontAwesomeIcons.facebook,
              onPressed: () {
                final Uri url = Uri.parse('https://www.facebook.com/Mr.mostafamahmod/');
                launchUrl(url);
              },
            ),
            IconContact(
              icon: FontAwesomeIcons.twitter,
              onPressed: () {
                final Uri url = Uri.parse('https://twitter.com/mostafaaboads');
                launchUrl(url);
              },
            ),
            IconContact(
              icon: FontAwesomeIcons.instagram,
              onPressed: () {
                final Uri url = Uri.parse('https://www.instagram.com/mostafamahmoudinsta/');
                launchUrl(url);
              },
            ),

          ],
        ),
        const SizedBox(
          height: 40.0,
        ),
        Row(
          children: [
            CustomButton(
              height: 50.0,
              width: 150.0,
              text: 'Hire Me',
              onPressed: () {
                final Uri url = Uri.parse(
                    'https://wa.me/+201006476494');
                launchUrl(url);
              },
              backgroundColor: Colors.deepOrange,
            ),
            const SizedBox(
              width: 10.0,
            ),
            CustomButton(
              height: 50.0,
              width: 150.0,
              text: 'CV',
              onPressed: () {
                // PdfDocument.openAsset('assets/images/MostafaMahmoudcv.pdf');
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyCv()));
                // PDF(
                //   enableSwipe: true,
                //   swipeHorizontal: true,
                //   autoSpacing: false,
                //   pageFling: false,
                //   onError: (error) {
                //     if (kDebugMode) {
                //       print(error.toString());
                //     }
                //   },
                //   onPageError: (page, error) {
                //     if (kDebugMode) {
                //       print('$page: ${error.toString()}');
                //     }
                //   },
                //   onPageChanged: (int? page, int? total) {
                //     if (kDebugMode) {
                //       print('page change: $page/$total');
                //     }
                //   },
                // ).fromAsset('assets/images/MostafaMahmoudcv.pdf');

              },
            ),
          ],
        )
      ],
    );
  }
}
