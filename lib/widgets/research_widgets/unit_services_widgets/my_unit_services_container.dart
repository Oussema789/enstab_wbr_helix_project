import 'package:enstab_wbr_helix/models/need_assessment_model.dart/labs_model.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/unit_services_widgets/equipement_widget_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/unit_services_widgets/grid_veiw_images_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget myUnitSericesContainer() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 4,
          offset: const Offset(0, 2), // changes the shadow position
        ),
      ],
    ),
    child: Column(children: [
      EquipmentWidget().py32(),
      gridViewImages(unitSerives),
    ]),
  );
}
