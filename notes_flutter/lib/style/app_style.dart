import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color bgColor = const Color(0xffe2e2ff);
  static Color MainColor = Color.fromARGB(255, 41, 41, 41);
  static Color accentColor = Color.fromARGB(255, 255, 140, 0);

  //* setting the Card different colors

  static List<Color> cardsColor = [
    Colors.orange.shade100,
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.pink.shade100,
    Colors.yellow.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
    Colors.cyan.shade100,
    Colors.brown.shade100,
    Colors.blueGrey.shade100
  ];

  //* Setting the text style

  static TextStyle mainTitle = GoogleFonts.poppins(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle mainContent = GoogleFonts.nunito(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  );

  static TextStyle dateTitle =
      GoogleFonts.poppins(fontSize: 13.0, fontWeight: FontWeight.w500);
}
