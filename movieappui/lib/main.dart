import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieappui/screens/popular/popular_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.montserrat().fontFamily
          /* dark theme settings */
          ),
      themeMode: ThemeMode.dark,
      home: const PopularScreen(),
    );
  }
}
