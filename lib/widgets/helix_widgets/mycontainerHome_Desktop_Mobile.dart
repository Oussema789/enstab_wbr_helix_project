import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Container myContainerHomeViewDesktopMobile(
    double font1, double font2, String text, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 4,
          offset: const Offset(0, 2), // changes the shadow position
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.asset(
                "assets/institute.png",
                scale: 1.5,
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/southern_university.png",
                scale: 3,
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/wbr_logo.png",
                scale: 1.5,
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/logo.png",
                scale: 0.8,
              ),
            ),
          ],
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: font1,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Returning to our meeting with members from ICLCE, Southern University, and the WBR Team on the 1st of July 2023.",
          style: TextStyle(
            fontSize: font2,
            fontWeight: FontWeight.bold,
          ),
        ).py16(),
        InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Image.asset(
                    "assets/first_meeting.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
            child: Image.asset("assets/first_meeting.jpg")),
      ],
    ),
  );
}
