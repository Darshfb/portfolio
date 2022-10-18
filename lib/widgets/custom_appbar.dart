import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_localization/cubit/locale_cubit.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text_button.dart';

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
                  Row(
                    children: [
                      CustomButton(
                        text: 'Get Started',
                        onPressed: () {},
                        height: 40.0,
                        width: 150.0,
                      ),
                      const SizedBox(width: 5.0,),
                      BlocConsumer<LocaleCubit, LocalStates>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          var cubit = LocaleCubit.get(context);
                          return CustomButton(
                            text: cubit.locale!.languageCode == 'en' ? 'AR' : 'EN',
                            onPressed: () {
                              if(cubit.locale!.languageCode == 'en'){
                                cubit.changeLanguage('ar');
                              }else{
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
