import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

Color themeColor = const Color.fromRGBO(67, 72, 75, 1.0);

PersistentTabController bottomNavigationController =
    PersistentTabController(initialIndex: 0);

class AppTextStyles {
  static final TextStyle headerBig = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.8),
  );
  static final TextStyle header = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle smallHeaderSlightlyBold = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static final TextStyle normal = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.black,
  );
  static final TextStyle titleNormalBold = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle normalGreen = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.green,
  );

  static final TextStyle small = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.grey,
  );

  static final TextStyle smallBold = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
}
