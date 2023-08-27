import 'package:enstab_wbr_helix/widgets/research_widgets/ElevatedButtonPDFViewer.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/need_assessments_qr_widget_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

GridView needAssessmentGridView(int n, List<String> myLabs, String ai_url,
    String clean_energy_lab_url, String textsetp, String textaiLab) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: n, // Set the number of columns in the grid
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
    ),
    itemCount: myLabs.length,
    itemBuilder: (context, index) {
      return Container(
        height: context.screenWidth * 2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes the shadow position
            ),
          ],
        ),
        child: Column(
          children: [
            needsAssessmentTitle(myLabs, index).px16(),
            const SizedBox(
              height: 50,
            ),
            ElevatedButtonPFDViewerDesktopMobile(
                myLabs, index, ai_url, clean_energy_lab_url, context),
            const SizedBox(
              height: 50,
            ),
            qrWidgetForLabs(
              myLabs[index] == 'AI Lab' ? ai_url : clean_energy_lab_url,
              myLabs[index] == 'AI Lab' ? textaiLab : textsetp,
            ),
          ],
        ),
      );
    },
  );
}

Widget needsAssessmentTitle(List<String> myLabs, int index) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              myLabs[index],
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromARGB(255, 8, 24, 243),
                  letterSpacing: .5,
                ),
              ),
            ),
          ],
        );
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            myLabs[index],
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Color.fromARGB(255, 8, 24, 243),
                letterSpacing: .5,
              ),
            ),
          ),
        ],
      );
    },
  );
}

Widget ElevatedButtonPFDViewerDesktopMobile(List<String> myLabs, int index,
    String ai_url, String clean_energy_lab_url, BuildContext context) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return ElevatedButtonPDFViewer(context.screenWidth * 0.035, myLabs, index,
          ai_url, clean_energy_lab_url, context);
    }
    return ElevatedButtonPDFViewer(context.screenWidth * 0.01, myLabs, index,
        ai_url, clean_energy_lab_url, context);
  });
}
