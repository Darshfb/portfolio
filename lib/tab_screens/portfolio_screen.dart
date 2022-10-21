import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:portfolio/cubit/app_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class PortfolioScreenWeb extends StatelessWidget {
  PortfolioScreenWeb({Key? key}) : super(key: key);
  final _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 500,
                        child: CarouselSlider.builder(
                            unlimitedMode: true,
                            enableAutoSlider: true,
                            slideBuilder: (index) {
                              return Container(
                                alignment: Alignment.center,
                                child: cubit.sure[index],
                              );
                            },
                            slideTransform: const CubeTransform(),
                            itemCount: cubit.sure.length),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'SureBaldi App In Debug Mode',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ).shimmer(
                            primaryColor: Colors.white,
                          ),
                          const Text(
                            'An E-commerce App That used for a supermarket to help people get their order',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(
                                          child: Text('Clean Architecture App',
                                            style: TextStyle(fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                            ),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('State Management', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Bloc --> Cubit', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Api Calls', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Dio', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Cache Data', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Shared Preferences', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Toast', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Toast & Bot Toast', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Image Cache', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Cached Network Image', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Bottom Nav Bar', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Persistent Bottom Nav Bar', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('FingerPrint Auth', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Local Auth', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Secure Storage', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Secure Storage', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Restart Phone', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Phoenix', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Localization', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Lozalization', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 2,
                  ).shimmer(),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Booking App for Algoriza Internship',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ).shimmer(
                            primaryColor: Colors.white,
                          ),
                          const Text(
                            'Booking App That used for a hotel to book a room',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(
                                          child: Text('Clean Architecture App',
                                            style: TextStyle(fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('State Management', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Bloc --> Cubit', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Api Calls', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Dio', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Cache Data', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Shared Preferences', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Toast', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Toast', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Image Cache', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Cached Network Image', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(child: Text('Restart Phone', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                      Expanded(child: Text('Flutter Phoenix', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)),
                                    ],
                                  ), const Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Expanded(
                                          child: Text(
                                        'Maps',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      Expanded(
                                          child: Text(
                                        'Google Map',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 500,
                        child: CarouselSlider.builder(
                            key: _sliderKey,
                            unlimitedMode: true,
                            enableAutoSlider: true,
                            slideBuilder: (index) {
                              return Container(
                                alignment: Alignment.center,
                                child: cubit.booking[index],
                              );
                            },
                            slideTransform: const CubeTransform(),
                            itemCount: cubit.sure.length),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
