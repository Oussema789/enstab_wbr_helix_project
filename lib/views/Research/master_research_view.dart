import 'package:enstab_wbr_helix/models/master_model.dart';
import 'package:enstab_wbr_helix/widgets/Home_widgets/Home_widgets.dart';
import 'package:enstab_wbr_helix/widgets/labs_widgets/labs_widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MasterResearchView extends StatelessWidget {
  const MasterResearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myPageHeading(context, "Master of Research").p32(),
          buildProgramDescription(context, mastersEnstab, 1).p32(),
          myContainer(
                  "To get more information about MaDE Master Degree , Click here.")
              .p32(),
          const Text('© 2023 ENSTAB.'),
        ],
      )),
    );
  }
}
