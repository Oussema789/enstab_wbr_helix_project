import 'package:enstab_wbr_helix/models/enstab_program_model.dart';
import 'package:enstab_wbr_helix/models/master_model.dart';
import 'package:enstab_wbr_helix/widgets/Home_widgets/Home_widgets.dart';
import 'package:enstab_wbr_helix/widgets/enstab_details/enstab_details.dart';
import 'package:enstab_wbr_helix/widgets/googlemap_exemple.dart';
import 'package:enstab_wbr_helix/widgets/Named_container/name_container.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        UniversityDetails(),
        //VerticalSliderImages(),
        Column(
          children: [
            /*
            myNamedContainer(context, size, "ENSTAB Structure (Organigramme)"),
            Container(
              height: 200,
              width: 200,
              child: const Text("ENSTAB'S STRUCTURE HERE"),
            ).p24(),*/
            myNamedContainer(
                context, size, "Locating ENSTA-Cedria in the world"),
            Row(
              children: [
                Expanded(child: const MyMapPage().py32()),
                const SizedBox(width: 20),
                Expanded(
                    child: InkWell(
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
                        child: Image.asset("assets/enstab.jpg"))),
              ],
            ),
            myNamedContainer(context, size, "AT ENGINEERING PROGRAM").py12(),
            //myContainer(introForProgram).p32(),
            EnstabProgramWidget(enstabPrograms, 0),
            EnstabProgramWidget(enstabPrograms, 1),
            EnstabProgramWidget(enstabPrograms, 2),
            EnstabProgramWidget(enstabPrograms, 3),
            myContainer(
                "To get more information about ENSTAB program , Click here."),
            myNamedContainer(context, size, "ENSTAB MASTER DEGREE").py12(),
            //myContainer(introToMaster).px32(),
            const SizedBox(height: 20),
            buildProgramDescription(
              context,
              mastersEnstab,
              0,
            ), //MasterDescription*******
            myContainer(
                "To get more information about 2I2T Master Degree , Click here."),
            myNamedContainer(context, size, "ENSTAB Projects").py12(),
            EnstabProject(context),
            //myNamedContainer(context, size, "ENSTAB IN NUMBERS").py12(),
            myNamedContainer(context, size, "ENSTAB INFO").py12(),
            FancyCardWidget(),
            const Text('© 2023 ENSTAB.'),
          ],
        ),
      ],
    );
  }
}
