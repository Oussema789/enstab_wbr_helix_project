import 'package:enstab_wbr_helix/models/need_assessment_model.dart/labs_model.dart';
import 'package:enstab_wbr_helix/views/Research/labs_view.dart';
import 'package:enstab_wbr_helix/views/Research/master_research_view.dart';
import 'package:enstab_wbr_helix/views/Research/need_assessment.dart';
import 'package:enstab_wbr_helix/views/Research/unit_services_view.dart';
import 'package:enstab_wbr_helix/widgets/blue_bar_widget/BlueBarWidget.dart';

import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_bar.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/my_research_view_container_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ResearchView extends StatefulWidget {
  const ResearchView({Key? key});

  @override
  State<ResearchView> createState() => _ResearchViewState();
}

class _ResearchViewState extends State<ResearchView> {
  List<String> myList = [
    "Needs assessment",
    "Laboratoires",
    "Unit services",
    "Master Research",
  ];

  final List<Widget> itemRoutes = [
    const NeedAssessmentView(),
    LabView(
      labs: labs,
    ),
    UnitServicesView(),
    MasterResearchView()
  ];

  final List<String> itemImages = [
    "assets/research/need_1.jpg",
    "assets/research/lab_1.jpg",
    "assets/research/unit_service.jpg",
    "assets/research/master.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    return Scaffold(
      body: Column(
        children: [
          NavigationBarWidget().p32(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  blueBarWidget(context, "RESEARCH"),
                  myResearchViewContainer(
                      context, myList, _controller, itemImages, itemRoutes),
                  Text('© 2023 ENSTAB.')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
