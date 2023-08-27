import 'package:enstab_wbr_helix/models/Professional_collaborations/forum_model.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/partner_logos_screen_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget rowParternsLogo(Forum forum) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PartnerLogosScreen(
                imagesFuture: forum.imagesEntreprisesLogos,
              ),
            ),
          ],
        );
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PartnerLogosScreen(
            imagesFuture: forum.imagesEntreprisesLogos,
          ),
        ],
      );
    },
  );
}
