import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget gridViewImages(List<String> imgs) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: imgs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Show the larger image when tapped
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Image.asset(
                      imgs[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imgs[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        );
      }
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: imgs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Show the larger image when tapped
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Image.asset(
                    imgs[index],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imgs[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
