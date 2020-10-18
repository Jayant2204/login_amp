import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_amp/Global/config.dart';

ThemeData appTheme() {
  return ThemeData.dark().copyWith(
      primaryColor: Constants.kyellow,
      dividerColor: Colors.white38,
      scaffoldBackgroundColor: Constants.kblack,
      textTheme: GoogleFonts.poppinsTextTheme()
          .apply(displayColor: Constants.kwhite, bodyColor: Constants.kwhite),
      primaryTextTheme: GoogleFonts.poppinsTextTheme()
          .apply(displayColor: Constants.kgrey, bodyColor: Constants.kgrey),
      accentTextTheme: GoogleFonts.poppinsTextTheme()
          .apply(displayColor: Constants.kblack, bodyColor: Constants.kblack),
      inputDecorationTheme: InputDecorationTheme(
        border:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.kgrey)),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.kred)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.kgrey)),
        disabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.kgrey)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Constants.kyellow)),
        focusedErrorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.kred)),
      ));
}
