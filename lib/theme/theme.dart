import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple[800], // Darker purple
  scaffoldBackgroundColor: Color(0xFF121212), // Standard dark background
  cardColor: Color(0xFF1A1A1A), // Slightly lighter than background
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1A1A1A),
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white70),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white70, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
    titleLarge: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple[800], // Darker purple button
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF1A1A1A),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey, width: 2),
    ),
  ),
  iconTheme: IconThemeData(color: Colors.purpleAccent[700]), // Vibrant purple icons
);
