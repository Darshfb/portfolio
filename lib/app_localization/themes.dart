import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/app_localization/colors.dart';

class AppThemes {
  static final darkMode = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Colors.red, // Icon background color
      onPrimary: defaultAppWhiteColor, // header text color
      surface: defaultAppColor3, // header  color
      onSurface: Colors.white, // text color
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: defaultAppWhiteColor),
    iconTheme: const IconThemeData(color: defaultAppWhiteColor),
    buttonTheme: const ButtonThemeData(
      buttonColor: defaultAppColor3,
    ),
    scaffoldBackgroundColor: defaultAppColor3,
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color: defaultAppWhiteColor),
        elevation: 5,
        backgroundColor: defaultAppColor3,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: defaultAppColor3,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        )),
    canvasColor: defaultAppColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: defaultAppColor,
      selectedItemColor: defaultAppColor3,
      elevation: 0,
      unselectedItemColor: defaultAppColor3.withOpacity(0.5),
    ),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: defaultAppColor),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(8),
      floatingLabelStyle: TextStyle(color: primaryColor),
      iconColor: secondaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: secondaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    sliderTheme: const SliderThemeData(
      inactiveTickMarkColor: Colors.transparent,
      activeTickMarkColor: Colors.transparent,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(defaultAppWhiteColor),
      fillColor: MaterialStateProperty.all(defaultAppColor2),
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
        selectedBorderColor: Colors.transparent,
        borderColor: Colors.transparent,
        fillColor: Colors.transparent),
    cardTheme: const CardTheme(
      color: defaultAppColor3,
      elevation: 5,
      shadowColor: defaultAppWhiteColor,
    ),

    // scaffoldBackgroundColor: Colors.grey.shade800,
    // /// appBar
    // appBarTheme: AppBarTheme(
    //   centerTitle: true,
    //   color: Colors.grey.shade600,
    //   elevation: 4,
    //   shadowColor: defaultAppWhiteColor,
    //   titleTextStyle: const TextStyle(fontSize: 16.0, color: defaultAppWhiteColor),
    // ),
    // // brightness: Brightness.dark,
    // primaryColor: Colors.grey.shade200,
    // colorScheme: ColorScheme.light(
    //   primary: Colors.grey.shade200,
    // ),
    // progressIndicatorTheme: const ProgressIndicatorThemeData(color: defaultAppWhiteColor),
    //
    // /// floating action button
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: Colors.grey,
    //   foregroundColor: secondaryColor,
    // ),
    //
    // /// Text form field decoration
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: const EdgeInsets.all(8),
    //   floatingLabelStyle: const TextStyle(color: Colors.grey),
    //   iconColor: secondaryColor,
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   border: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   disabledBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    // ),
    //
    // cardTheme:  CardTheme(
    //   color: Colors.grey.shade700,
    //   shadowColor: Colors.grey,
    //   elevation: 5,
    // ),
  );

  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade200,

    /// appBar
    appBarTheme: AppBarTheme(
      // centerTitle: true,
      color: primaryColor,
      elevation: 4,
      shadowColor: Colors.grey.shade200,
      titleTextStyle:
          const TextStyle(fontSize: 16.0, color: defaultAppWhiteColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    brightness: Brightness.light,
    primaryColor: primaryColor,
    colorScheme: const ColorScheme.light(
        primary: Colors.green, // header background color
        onPrimary: defaultAppWhiteColor, // header text color
        onSurface: Colors.black, // body text color
        // background: defaultAppWhiteColor,
        // secondary: defaultAppWhiteColor,
        surface: defaultAppWhiteColor),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),

    /// floating action button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: secondaryColor,
    ),

    /// Text form field decoration
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(8),
      floatingLabelStyle: TextStyle(color: primaryColor),
      iconColor: secondaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: secondaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.grey.shade300,
      shadowColor: Colors.deepOrange,
      elevation: 5,
    ),
  );
}
