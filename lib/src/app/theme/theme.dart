import 'package:flutter/material.dart';

const primarySwatchColorOne = Colors.indigo;
const primarySwatchColorTwo = Colors.cyan;
const buttonTextColorOne = Colors.cyan;
const buttonTextColorTwo = Colors.white;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primarySwatchColorOne,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: buttonTextColorOne,
      onPrimary: Colors.white,
    )
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.indigo),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.cyan),
    titleTextStyle: TextStyle(color: Colors.cyan),
  ),
  iconTheme: const IconThemeData(
    color: Colors.cyan
  )
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: primarySwatchColorTwo,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.cyan,
      onPrimary: buttonTextColorTwo,
    )
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.cyan),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.cyan),
    titleTextStyle: TextStyle(color: Colors.cyan),
  ),
  iconTheme: const IconThemeData(
    color: Colors.cyan
  )
  
);