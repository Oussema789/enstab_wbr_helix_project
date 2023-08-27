import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class VerticalSliderImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imgList = [];
    for (int i = 1; i <= 5; i++) {
      final imageName = 'enstab$i.jpg';
      imgList.add('assets/enstab_images/$imageName');
    }
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Show the larger image when tapped
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Image.asset(
                      imgList[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imgList[index]),
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
          crossAxisCount: 5,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Show the larger image when tapped
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Image.asset(
                    imgList[index],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imgList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ).py16();
    });
  }
}
