import 'package:flutter/material.dart';

// EXAMPLE OF USAGE:
// Text('Heading 1', style: Theme.of(context).textTheme.displayLarge), // Display large text style
// Text('Body text example', style: Theme.of(context).textTheme.bodyLarge), // Body large text style

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    // Primary Color for the App
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    // Use colorScheme for defining secondary color
    colorScheme: ColorScheme.light(
      secondary: Colors.orange, // Accent color
    ),
    scaffoldBackgroundColor: Colors.white, // Background color for Scaffold
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue, // AppBar background color
      elevation: 0, // AppBar shadow
      iconTheme: IconThemeData(color: Colors.white), // Icon color in AppBar
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ), // Formerly headline1
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ), // Formerly headline2
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ), // Formerly bodyText1
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black54,
      ), // Formerly bodyText2
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black38,
      ), // Formerly caption
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue, // Button background color
      textTheme: ButtonTextTheme.primary, // Button text color
    ),
    iconTheme: IconThemeData(
      color: Colors.blue, // Default icon color
      size: 24, // Default icon size
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.blue), // Label color in text fields
      hintStyle: TextStyle(
        color: Colors.grey,
      ), // Hint text color in text fields
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ), // Border style for inputs
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue,
        ), // Border when input is enabled
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.dark(secondary: Colors.orange),
    scaffoldBackgroundColor:
        Colors.black, // Background color for Scaffold in dark mode
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black, // AppBar background color
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white), // Icon color in AppBar
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white70,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white70,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white38,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    iconTheme: IconThemeData(color: Colors.blue, size: 24),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.blue),
      hintStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
    ),
  );
}
