import 'package:enstab_wbr_helix/widgets/Named_container/named_container_Desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget myNamedContainer(
  BuildContext context,
  Size size,
  String text,
) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return myNamedContainerForDesktopAndMobile(
          size, text, size.height * 0.09, 15);
    }
    return myNamedContainerForDesktopAndMobile(
        size, text, size.height * 0.2, 50);
  });
}
