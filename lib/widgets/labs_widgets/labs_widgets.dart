import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget myPageHeading(BuildContext context, String text) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Row(
        children: [
          Container(
            height: 60,
            width: 60,
            child: Image.asset(
              "assets/logo.png",
            ),
          ),
          SizedBox(width: 50), // Adjust the spacing between the image and text
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize:
                    context.screenWidth * 0.05, // Use a specific font size
                fontWeight: FontWeight.bold,
                color: Color(0xFF0818F3), // Use a more readable color format
              ),
            ),
          ),
        ],
      ).p12();
    }

    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/logo.png"),
          SizedBox(
            width: 50,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: context.screenWidth * 0.02,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 8, 24, 243),
            ),
          )
        ],
      ).px64(),
    );
  });
}
