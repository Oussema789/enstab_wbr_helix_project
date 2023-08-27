import 'package:enstab_wbr_helix/models/helix_models/workshop_model.dart';
import 'package:enstab_wbr_helix/widgets/labs_widgets/labs_widgets.dart';
import 'package:enstab_wbr_helix/widgets/voluntary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkshopsView extends StatelessWidget {
  const WorkshopsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    myPageHeading(context, "Workshops").p32(),
                    SizedBox(
                      height: 30,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // Disable inner ListView scrolling
                      itemCount: workshops.length,
                      itemBuilder: (context, index) {
                        Workshop workshop = workshops[index];
                        return Container(
                          child: voluntaryWidget(context, workshop.description,
                                  workshop.title, workshop.imageList)
                              .p20(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                myPageHeading(context, "Workshops").px64(),
                SizedBox(
                  height: 30,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable inner ListView scrolling
                  itemCount: workshops.length,
                  itemBuilder: (context, index) {
                    Workshop workshop = workshops[index];
                    return Container(
                      child: voluntaryWidget(context, workshop.description,
                              workshop.title, workshop.imageList)
                          .p20(),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
