import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenWidth * 5 / 8.5,
      width: context.screenWidth / 4.5,
      child: Image.asset("assets/logo.png"),
    );
  }
}
