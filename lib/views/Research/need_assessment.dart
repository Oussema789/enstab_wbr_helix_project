import 'package:enstab_wbr_helix/widgets/labs_widgets/labs_widgets.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/need_assessment_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NeedAssessmentView extends StatefulWidget {
  const NeedAssessmentView({Key? key}) : super(key: key);

  @override
  _NeedAssessmentViewState createState() => _NeedAssessmentViewState();
}

class _NeedAssessmentViewState extends State<NeedAssessmentView> {
  List<String> myLabs = [
    'AI Lab',
    'Clean Energy Lab',
  ];

  List<String> myPDFPaths = [
    'assets/pdfs/needs_assessment_of_ai_lab.pdf',
    'assets/pdfs/needs_assessment_of_clean_energy_lab.pdf'
  ];

  String textsetp =
      "You can scan this QR code to get the PDF of the Clean Energy LAB requirements";
  String textaiLab =
      "You can scan this QR code to get the PDF of the AI LAB requirements";

  String ai_url =
      "https://drive.google.com/file/d/1Q6hjBfATKGrRiITvol40LpcM_cL9EQha/view?usp=sharing";
  String clean_energy_lab_url =
      "https://drive.google.com/file/d/1HgzshICQq8hbw0ssvA-9RuELhO8Nl--n/view?usp=sharing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          myPageHeading(context, "NEEDS ASSESSMENTS"),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: needAssessmentGridViewDesktopMobile(),
            ),
          ),
        ],
      ),
    );
  }

  Widget needAssessmentGridViewDesktopMobile() {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return needAssessmentGridView(
            1, myLabs, ai_url, clean_energy_lab_url, textsetp, textaiLab);
      }
      return needAssessmentGridView(
          2, myLabs, ai_url, clean_energy_lab_url, textsetp, textaiLab);
    });
  }
}
