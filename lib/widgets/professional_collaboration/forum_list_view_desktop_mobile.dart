import 'package:enstab_wbr_helix/models/Professional_collaborations/forum_model.dart';
import 'package:enstab_wbr_helix/views/professional_collaborations/forum_details.dart';
import 'package:enstab_wbr_helix/widgets/fade_transition.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget forumsListView() {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return ListView.builder(
          controller: ScrollController(),
          shrinkWrap: true,
          itemCount: etcForum.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                fadeNavigation(
                  context,
                  ForumView(
                    forum: etcForum[index],
                  ),
                );
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GetImageFromFirebase(imagePath: etcForum[index].image),
              ),
            ).py32();
          },
        );
      }

      return ListView.builder(
        controller: ScrollController(),
        shrinkWrap: true,
        itemCount: etcForum.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              fadeNavigation(
                context,
                ForumView(
                  forum: etcForum[index],
                ),
              );
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: GetImageFromFirebase(imagePath: etcForum[index].image),
            ),
          ).py32();
        },
      );
    },
  );
}
