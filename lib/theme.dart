import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const ColorScheme colorScheme = ColorScheme.light(
  primary: Color(0xff3ced78),
  onPrimary: Color(0xff00521c),
  secondary: Color(0xffedf2f6),
  onSecondary: Color(0xff2b333e),
  tertiary: Color(0xff9db7cd),
  surface: Color(0xffffffff),
  onSurface: Color(0xff000000),
  onSurfaceVariant: Color(0xff5e7a90),
);

//Using the  raleway font instead of Gilroy since the original font was a proprietary one
TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.raleway(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 24.76 / 20,
  ),
  headlineLarge: GoogleFonts. raleway(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 24.76 / 20,
  ),
  headlineSmall: GoogleFonts. raleway(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    height: 18.38 / 15,
  ),
  bodyLarge: GoogleFonts. raleway(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 19.41 / 16,
  ),
  bodyMedium: GoogleFonts. raleway(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 16.98 / 14,
  ),
  labelLarge: GoogleFonts. raleway(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 14.56 / 12,
  ),
);
