import 'package:flutter/material.dart';

class CustomTheme {
  static const qPrimaryColor = Color(0xffffdcbd);
  static const qSecondaryColor = Color(0xFF272727);
  static const qAccentColor = Color.fromARGB(193, 19, 30, 126);
  static const qCardBgColor = Color(0xFFF7F6F1);
  static const qWhiteColor = Color(0xffffffff);
  static const qDarkColor = Color(0xFF000000);
  static const cardShadow = [
    BoxShadow(
        color: Colors.grey,
        blurRadius: 6,
        spreadRadius: 4,
        offset: Offset(3, 2))
  ];
  static const buttonShadow = [
    BoxShadow(
        color: Colors.grey,
        blurRadius: 3,
        spreadRadius: 4,
        offset: Offset(1, 3))
  ];

  static getCardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(35),
      boxShadow: cardShadow,
    );
  }

  static ThemeData getTheme() {
    Map<String, double> fontSize = {"sm": 14, "md": 18, "lg": 24};

    return ThemeData(
        primaryColor: qPrimaryColor,
        //Define the default theme font family
        fontFamily: 'Muli',
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            toolbarHeight: 70,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'Muli',
                fontSize: fontSize['lg'],
                fontWeight: FontWeight.bold,
                letterSpacing: 2)),
        tabBarTheme: const TabBarTheme(
            labelColor: qPrimaryColor, unselectedLabelColor: qAccentColor),
        textTheme: TextTheme(
            headlineLarge: TextStyle(
                color: Colors.black,
                fontSize: fontSize['lg'],
                fontWeight: FontWeight.bold),
            headlineMedium: TextStyle(
                color: Colors.black,
                fontSize: fontSize['md'],
                fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(
                color: Colors.black,
                fontSize: fontSize['sm'],
                fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
                fontSize: fontSize['sm'], fontWeight: FontWeight.normal),
            titleSmall: TextStyle(
                fontSize: fontSize['sm'],
                fontWeight: FontWeight.bold,
                letterSpacing: 1)));
  }
}
