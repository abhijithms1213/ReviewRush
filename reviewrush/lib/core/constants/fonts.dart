import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Function to get Roboto text style with configurable color, fontSize, and fontWeight
TextStyle fontrobotoTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 15,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Montserrat text style with configurable color, fontSize, and fontWeight
TextStyle fontmontserratTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 15,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Montserrat Alternates text style with configurable color, fontSize, and fontWeight
TextStyle fontmontserratAlternatesTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.montserratAlternates(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Heading text style with configurable color, fontSize, and fontWeight
TextStyle fontheadingTextStyle({
  Color color = Colors.black,
  double fontSize = 24,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Subtitle text style with configurable color, fontSize, and fontWeight
TextStyle fontsubtitleTextStyle({
  Color color = const Color.fromARGB(255, 100, 100, 100),
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w400,
}) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Body text style with configurable color, fontSize, and fontWeight
TextStyle fontbodyTextStyle({
  Color color = const Color.fromARGB(255, 80, 80, 80),
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Caption text style with configurable color, fontSize, and fontWeight
TextStyle fontcaptionTextStyle({
  Color color = const Color.fromARGB(255, 150, 150, 150),
  double fontSize = 12,
  FontWeight fontWeight = FontWeight.w300,
}) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Open Sans text style with configurable color, fontSize, and fontWeight
TextStyle fontopenSansTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 15,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.openSans(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Inter text style with configurable color, fontSize, and fontWeight
TextStyle fontinterTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 15,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Lato text style with configurable color, fontSize, and fontWeight
TextStyle fontlatoTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 15,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

// Function to get Noto Sans text style with configurable color, fontSize, and fontWeight
TextStyle fontnotoSansTextStyle({
  Color color = const Color.fromARGB(255, 65, 65, 65),
  double fontSize = 15,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.notoSans(
    textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
