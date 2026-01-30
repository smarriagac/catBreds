import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_color.dart';

ThemeData getTheme() {
  final lightTheme = ThemeData(useMaterial3: true);
  final textTheme = lightTheme.textTheme;
  const boldStyle = TextStyle(fontWeight: FontWeight.bold, color: Colors.black);
  const darkStyle = TextStyle(color: Colors.black);

  return lightTheme.copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
    colorScheme: lightColorScheme,
    textTheme: GoogleFonts.nunitoSansTextTheme(
      textTheme.copyWith(
        titleSmall: textTheme.titleSmall?..merge(boldStyle),
        titleMedium: textTheme.titleMedium?.merge(boldStyle),
        titleLarge: textTheme.titleLarge?.merge(boldStyle),
        bodySmall: textTheme.bodyMedium?.merge(darkStyle),
      ),
    ),
  );
}
