import 'package:enstab_wbr_helix/models/enstab_program_model.dart';
import 'package:enstab_wbr_helix/models/master_model.dart';
import 'package:enstab_wbr_helix/widgets/Home_widgets/Home_widgets.dart';
import 'package:enstab_wbr_helix/widgets/enstab_details/enstab_details.dart';
import 'package:enstab_wbr_helix/widgets/googlemap_exemple.dart';
import 'package:enstab_wbr_helix/widgets/Named_container/name_container.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Column(
          children: [
            myWidgetHeaderHomePage(context).py4(),
            myNamedContainer(context, size, "ENSTAB Structure (Organigramme)"),
            Container(
              height: 200,
              width: 200,
              child: const Text("ENSTAB'S STRUCTURE HERE"),
            ).p2(),
            myNamedContainer(
                context, size, "Locating ENSTA-Cedria in the world"),
            Column(
              children: [
                const MyMapPage().py4(),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: Image.asset(
                          "assets/enstab.jpg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/enstab.jpg",
                  ),
                ),
              ],
            ),
            myNamedContainer(context, size, "TA ENGINEERING PROGRAM").py8(),
            EnstabProgramWidget(enstabPrograms, 0).py4(),
            EnstabProgramWidget(enstabPrograms, 1).py4(),
            EnstabProgramWidget(enstabPrograms, 2).py4(),
            EnstabProgramWidget(enstabPrograms, 3).py4(),
            myContainer(
                    "To get more information about ENSTAB program , Click here.")
                .py4(),
            myNamedContainer(context, size, "ENSTAB MASTER DEGREE"),

            buildProgramDescription(
              context,
              mastersEnstab,
              0,
            ).py4(), //MasterDescription*******

            myNamedContainer(context, size, "ENSTAB Projects"),
            EnstabProject(context).py4(),
            myNamedContainer(context, size, "ENSTAB IN NUMBERS"),
            myNamedContainer(context, size, "ENSTAB INFO"),
            FancyCardWidget().py4(),
            const Text('© 2023 ENSTAB.'),
          ],
        ),
      ],
    );
  }
}

Widget myWidgetHeaderHomePage(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: context.screenWidth * 3.3, child: UniversityDetails()),
      //VerticalSliderImages(),
    ],
  );
}
