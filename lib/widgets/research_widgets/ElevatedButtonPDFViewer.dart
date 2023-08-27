import 'package:enstab_wbr_helix/widgets/Home_widgets/Home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ElevatedButton ElevatedButtonPDFViewer(
    double fontsize,
    List<String> myLabs,
    int index,
    String ai_url,
    String clean_energy_lab_url,
    BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () {
      /*
                      fadeNavigation(
                        context,
                        PDFViewerWidget(pdfPath: myPDFPaths[index]),
                      );*/
      myLabs[index] == 'AI Lab'
          ? openWebsite(ai_url)
          : openWebsite(clean_energy_lab_url);
    },
    icon: const Icon(Icons.picture_as_pdf),
    label: Text(
      'View ${myLabs[index]} Requirements',
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontsize,
        ),
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
    ),
  );
}
