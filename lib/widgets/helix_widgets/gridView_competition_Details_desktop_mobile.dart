import 'package:flutter/material.dart';

GridView competitionDetailsDesktopMobile(int n, List<String> images) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: n,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
    ),
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: images.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Image.asset(
                images[index],
                fit: BoxFit.contain,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  );
}
