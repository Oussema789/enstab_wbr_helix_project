import 'package:enstab_wbr_helix/models/need_assessment_model.dart/labs_model.dart';
import 'package:enstab_wbr_helix/widgets/labs_widgets/labs_widgets.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/lab_card_view_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LabView extends StatelessWidget {
  final List<Lab> labs;

  LabView({Key? key, required this.labs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            myPageHeading(context, "ENSTAB's Labs"),
            SizedBox(height: 16), // Add spacing between header and list
            Expanded(
              child: ListView.builder(
                itemCount: labs.length,
                itemBuilder: (BuildContext context, int index) {
                  return LabCard(lab: labs[index]).p12();
                },
              ),
            ),
            const Text('© 2023 ENSTAB.'),
          ],
        ),
      ),
    );
  }
}
