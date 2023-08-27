import 'package:enstab_wbr_helix/widgets/blue_bar_widget/blueBarWidgetDesktopMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget blueBarWidget(BuildContext context, String text) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return myBlueBarWidgetDesktopMobile(
          context, text, context.screenHeight * 0.1, 15);
    }
    return myBlueBarWidgetDesktopMobile(
            context, text, context.screenHeight * 0.2, 50)
        .py64();
  });
}
