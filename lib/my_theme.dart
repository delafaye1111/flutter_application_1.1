import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 38, 39, 95),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 28, 117, 188),
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 255, 255, 255)),
    // Customize back button color here
    useMaterial3: true,
  );
}
