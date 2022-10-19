import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_localization/cubit/locale_cubit.dart';
import 'package:portfolio/cubit/app_cubit.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text_button.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key}) : super(key: key);
  final List<String> title = ['About', 'Portfolio', 'Contact'];

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
              const Text(
                'My Protfolio',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 30.0),
              ),
              const Spacer(
                flex: 2,
              ),
              BlocConsumer<AppCubit, AppState>(
                listener: (BuildContext context, state) {},
                builder: (BuildContext context, Object? state) {
                  var cubit = AppCubit.get(context);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 190,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: title.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomAppBarButton(
                                title: title[index],
                                onTap: () {
                                  cubit.changeAppBar(index: index);
                                });
                          },
                        ),
                      ),
                      // CustomAppBarButton(title: 'About', onTap: () {}),
                      // CustomAppBarButton(title: 'Portfolio', onTap: () {}),
                      // CustomAppBarButton(title: 'Contact', onTap: () {}),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Row(
                        children: [
                          CustomButton(
                            text: 'Get Started',
                            onPressed: () {},
                            height: 40.0,
                            width: 150.0,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          BlocConsumer<LocaleCubit, LocalStates>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              var cubit = LocaleCubit.get(context);
                              return CustomButton(
                                text: cubit.locale!.languageCode == 'en'
                                    ? 'AR'
                                    : 'EN',
                                onPressed: () {
                                  if (cubit.locale!.languageCode == 'en') {
                                    cubit.changeLanguage('ar');
                                  } else {
                                    cubit.changeLanguage('en');
                                  }
                                },
                                height: 40.0,
                                width: 40.0,
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
