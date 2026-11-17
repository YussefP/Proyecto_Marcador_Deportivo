import 'package:flutter/material.dart';

class AppTheme {

  static const Color fondo = Color.fromARGB(255, 23, 27, 35);
  static const Color tarjeta = Color.fromARGB(255, 35, 39, 48);
  static const Color borde = Color.fromARGB(255, 58, 63, 76);

  static const Color local = Color.fromARGB(255, 29, 135, 221);
  static const Color visitante = Color.fromARGB(255, 222, 53, 41);
  static const Color resetColor = Colors.grey;

  static ThemeData get tema {

    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: fondo,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 44, 137, 213),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 2.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ), 
      ),
    );
  }
}