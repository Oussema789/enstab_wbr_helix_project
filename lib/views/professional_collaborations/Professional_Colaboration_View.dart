import 'package:enstab_wbr_helix/models/Professional_collaborations/professional_collaboration_model.dart';
import 'package:enstab_wbr_helix/widgets/blue_bar_widget/BlueBarWidget.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_bar.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/forum_list_view_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/partner_logos_screen_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/voluntary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfessionalColaborationView extends StatefulWidget {
  const ProfessionalColaborationView({Key? key});

  @override
  State<ProfessionalColaborationView> createState() =>
      _ProfessionalColaborationViewState();
}

class _ProfessionalColaborationViewState
    extends State<ProfessionalColaborationView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSizeName;
    double fontSizePosition;

    if (size.width >= 1024) {
      // For Desktop
      fontSizeName = 30;
      fontSizePosition = 18;
    } else if (size.width >= 600 && size.width < 1024) {
      // For Tablet
      fontSizeName = size.width * 0.035;
      fontSizePosition = size.width * 0.025;
    } else {
      // For Mobile
      fontSizeName = size.width * 0.03;
      fontSizePosition = size.width * 0.02;
    }

    return Scaffold(
      body: Column(
        children: [
          NavigationBarWidget().p32(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  blueBarWidget(context, "PROFESSIONAL COLLABORATION"),
                  dividerWidget('ENSTAB PARTNERS'),
                  PartnerLogosScreen(
                    imagesFuture: partners,
                  ).p32(),
                  dividerWidget('ENSTAB FORUMS').py32(),
                  forumsListView().px32(),
                  Text('© 2023 ENSTAB.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
