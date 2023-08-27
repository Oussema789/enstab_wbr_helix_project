import 'dart:ui';

import 'package:enstab_wbr_helix/widgets/fade_transition.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget myResearchViewContainer(
    BuildContext context,
    List<String> myList,
    ScrollController _controller,
    List<String> itemImages,
    List<Widget> itemRoutes) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return myContainer(context.screenHeight * 0.3, _controller, myList,
            itemRoutes, itemImages);
      }
      return myContainer(context.screenHeight * 0.5, _controller, myList,
          itemRoutes, itemImages);
    },
  );
}

Container myContainer(double? height, ScrollController _controller,
    List<String> myList, List<Widget> itemRoutes, List<String> itemImages) {
  return Container(
    padding: EdgeInsets.all(12.0),
    child: ListView.builder(
      controller: _controller,
      shrinkWrap: true,
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: height,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () {
              fadeNavigation(
                context,
                itemRoutes[index],
              );
            },
            child: Stack(
              children: [
                // Blurred image background
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(itemImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                // Centered text
                Center(
                  child: Text(
                    myList[index],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
