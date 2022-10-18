import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_localization/app_localization.dart';
import 'package:portfolio/app_localization/cubit/locale_cubit.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/home_screen_tab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocaleCubit()..getSaveLanguage()),
      ],
      child: BlocConsumer<LocaleCubit, LocalStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            locale: LocaleCubit.get(context).locale,
            supportedLocales: const [
              Locale('en'),
              Locale('ar'),
            ],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }
              return supportedLocales.first;
            },
            title: 'Mostafa Website',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: const Color(0xFF0E0C38),
              primarySwatch: Colors.blue,
            ),
            home: const Responsive(
                mobile: HomeScreenTab(),
                tablet: HomeScreenTab(),
                web: HomeScreen()),
          );
        },
      ),
    );
  }
}
