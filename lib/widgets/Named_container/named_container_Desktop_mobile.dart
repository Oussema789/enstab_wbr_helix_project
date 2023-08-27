import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Container myNamedContainerForDesktopAndMobile(
    Size size, String text, double height, double fontsize) {
  return Container(
    width: size.width,
    height: height,
    color: Colors.blueAccent,
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.bold,
          fontSize: fontsize,
          textStyle: const TextStyle(color: Colors.white, letterSpacing: .5),
        ),
      ).p2(),
    ),
  );
}
