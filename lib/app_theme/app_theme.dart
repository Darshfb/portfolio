// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../app_localization/colors.dart';
//
// Color primaryColor = Colors.green.shade500;
// Color secondaryColor = Colors.green;
//
// final appTheme = ThemeData(
//   /// appBar
//   appBarTheme: AppBarTheme(
//     centerTitle: true,
//     color: primaryColor,
//     elevation: 4,
//     shadowColor: Colors.grey.shade200,
//     titleTextStyle: const TextStyle(fontSize: 16.0, color: Colors.white),
//   ),
//   brightness: Brightness.light,
//   primaryColor: primaryColor,
//   colorScheme: ColorScheme.light(
//     primary: primaryColor,
//   ),
//   progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
//
//   /// floating action button
//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//     backgroundColor: primaryColor,
//     foregroundColor: secondaryColor,
//   ),
//
//   /// Text form field decoration
//   inputDecorationTheme: InputDecorationTheme(
//     contentPadding: const EdgeInsets.all(8),
//     floatingLabelStyle: TextStyle(color: primaryColor),
//     iconColor: secondaryColor,
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: secondaryColor),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     border: OutlineInputBorder(
//       borderSide: BorderSide(color: primaryColor),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     disabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: primaryColor),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: primaryColor),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     errorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: primaryColor),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     focusedErrorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: primaryColor),
//       borderRadius: BorderRadius.circular(8),
//     ),
//   ),
// scaffoldBackgroundColor: Colors.grey.shade100,
//   cardTheme:  CardTheme(
//     color: Colors.grey.shade200,
//     shadowColor: Colors.grey,
//     elevation: 5,
//   ),
// );
//
// final darkTheme = ThemeData(
//   colorScheme: const ColorScheme.dark(
//     primary: defaultAppColor2,
//     secondary: defaultAppColor,
//   ),
//   textSelectionTheme:
//   const TextSelectionThemeData(cursorColor: defaultAppWhiteColor),
//   iconTheme: const IconThemeData(color: defaultAppWhiteColor),
//   buttonTheme: const ButtonThemeData(
//     buttonColor: defaultAppColor3,
//   ),
//   scaffoldBackgroundColor: defaultAppColor3,
//   appBarTheme: const AppBarTheme(
//       elevation: 5,
//       backgroundColor: defaultAppColor3,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//       )),
//   canvasColor: defaultAppColor,
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.shifting,
//     backgroundColor: defaultAppColor,
//     selectedItemColor: defaultAppColor3,
//     elevation: 0,
//     unselectedItemColor: defaultAppColor3.withOpacity(0.5),
//   ),
//   floatingActionButtonTheme:
//   const FloatingActionButtonThemeData(backgroundColor: defaultAppColor),
//   sliderTheme: const SliderThemeData(
//     inactiveTickMarkColor: Colors.transparent,
//     activeTickMarkColor: Colors.transparent,
//   ),
//   checkboxTheme: CheckboxThemeData(
//     checkColor: MaterialStateProperty.all(Colors.white),
//     fillColor: MaterialStateProperty.all(defaultAppColor2),
//   ),
//   dialogBackgroundColor: defaultAppColor2,
//   toggleButtonsTheme: const ToggleButtonsThemeData(
//       selectedBorderColor: Colors.transparent,
//       borderColor: Colors.transparent,
//       fillColor: Colors.transparent),
//   cardTheme: const CardTheme(
//     color: defaultAppColor3,
//     elevation: 5,
//     shadowColor: Colors.white,
//   ),
//
//   // scaffoldBackgroundColor: Colors.grey.shade800,
//   // /// appBar
//   // appBarTheme: AppBarTheme(
//   //   centerTitle: true,
//   //   color: Colors.grey.shade600,
//   //   elevation: 4,
//   //   shadowColor: Colors.white,
//   //   titleTextStyle: const TextStyle(fontSize: 16.0, color: Colors.white),
//   // ),
//   // // brightness: Brightness.dark,
//   // primaryColor: Colors.grey.shade200,
//   // colorScheme: ColorScheme.light(
//   //   primary: Colors.grey.shade200,
//   // ),
//   // progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
//   //
//   // /// floating action button
//   // floatingActionButtonTheme: FloatingActionButtonThemeData(
//   //   backgroundColor: Colors.grey,
//   //   foregroundColor: secondaryColor,
//   // ),
//   //
//   // /// Text form field decoration
//   // inputDecorationTheme: InputDecorationTheme(
//   //   contentPadding: const EdgeInsets.all(8),
//   //   floatingLabelStyle: const TextStyle(color: Colors.grey),
//   //   iconColor: secondaryColor,
//   //   focusedBorder: OutlineInputBorder(
//   //     borderSide: const BorderSide(color: Colors.grey),
//   //     borderRadius: BorderRadius.circular(8),
//   //   ),
//   //   border: OutlineInputBorder(
//   //     borderSide: const BorderSide(color: Colors.grey),
//   //     borderRadius: BorderRadius.circular(8),
//   //   ),
//   //   disabledBorder: OutlineInputBorder(
//   //     borderSide: const BorderSide(color: Colors.grey),
//   //     borderRadius: BorderRadius.circular(8),
//   //   ),
//   //   enabledBorder: OutlineInputBorder(
//   //     borderSide: const BorderSide(color: Colors.grey),
//   //     borderRadius: BorderRadius.circular(8),
//   //   ),
//   //   errorBorder: OutlineInputBorder(
//   //     borderSide: const BorderSide(color: Colors.grey),
//   //     borderRadius: BorderRadius.circular(8),
//   //   ),
//   //   focusedErrorBorder: OutlineInputBorder(
//   //     borderSide: const BorderSide(color: Colors.grey),
//   //     borderRadius: BorderRadius.circular(8),
//   //   ),
//   // ),
//   //
//   // cardTheme:  CardTheme(
//   //   color: Colors.grey.shade700,
//   //   shadowColor: Colors.grey,
//   //   elevation: 5,
//   // ),
// );
