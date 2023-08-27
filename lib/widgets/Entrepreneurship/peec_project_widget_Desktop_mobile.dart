import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Padding gridViewPeecProjectDesktopMobile(int n, List<String> imgs) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: n,
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
    ),
  );
}

Widget antenneTextWidget() {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Text(antenneText).p16();
      }
      return Text(antenneText).px32();
    },
  );
}
