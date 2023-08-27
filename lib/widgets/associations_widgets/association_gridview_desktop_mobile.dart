import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';
import 'package:enstab_wbr_helix/widgets/associations_widgets/association_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget myGridViewWidget() {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: enstabAssociationsList.length,
        itemBuilder: (context, index) {
          return GridItem(
            association: enstabAssociationsList[index],
          );
        },
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemCount: enstabAssociationsList.length,
      itemBuilder: (context, index) {
        return GridItem(
          association: enstabAssociationsList[index],
        );
      },
    );
  });
}
