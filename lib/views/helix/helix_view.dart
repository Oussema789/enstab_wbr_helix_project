import 'package:enstab_wbr_helix/models/helix_models/helix_model.dart';
import 'package:enstab_wbr_helix/views/helix/all_enstab_competitions/enstab_competitions.dart';
import 'package:enstab_wbr_helix/views/helix/voluntary_view.dart';
import 'package:enstab_wbr_helix/views/helix/workshops.dart';
import 'package:enstab_wbr_helix/widgets/blue_bar_widget/BlueBarWidget.dart';
import 'package:enstab_wbr_helix/widgets/helix_widgets/my_student_exchanges_widget.dart';
import 'package:enstab_wbr_helix/widgets/helix_widgets/mycontainerHome_Desktop_Mobile.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_bar.dart';
import 'package:enstab_wbr_helix/widgets/voluntary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';
import '../associations/associations_view.dart';

class HelixView extends StatefulWidget {
  const HelixView({Key? key});

  @override
  State<HelixView> createState() => _HelixViewState();
}

class _HelixViewState extends State<HelixView> {
  List<String> myList = [
    "Associations",
    "ENSTAB competitions",
    "Workshops",
    "Voluntary"
  ];

  final List<Widget> itemRoutes = [
    AssociationView(),
    EnstabCompetitionsView(),
    WorkshopsView(),
    VoluntaryView()
  ];

  final List<String> imagePaths = [
    "assets/associations/association_imag2.jpg",
    "assets/associations/enstab_competitions/competition_image.jpg",
    "assets/associations/workshops/workshop_image.jpg",
    "assets/associations/etc/visites/animal_shelter/etc_4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBarWidget().p32(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  blueBarWidget(context, "HELIX"),
                  dividerWidget('PROJECT OVERVIEW'),
                  myContainerHomeView(context, helixProgram[0].description)
                      .p32(),
                  dividerWidget('STUDENTS EXCHANGE'),
                  myStudentExchangeContainer(myList, itemRoutes, imagePaths),
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

Widget myStudentExchangeContainer(
    List<String> myList, List<Widget> itemRoutes, List<String> imagePaths) {
  ScrollController _scrollController = ScrollController();
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return myStudentExchangeContainerDesktopMobile(
          24,
          context.screenHeight * 0.2,
          _scrollController,
          myList,
          itemRoutes,
          imagePaths);
    }

    return myStudentExchangeContainerDesktopMobile(
        24,
        context.screenHeight * 0.5,
        _scrollController,
        myList,
        itemRoutes,
        imagePaths);
  });
}

Widget myContainerHomeView(BuildContext context, String text) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return myContainerHomeViewDesktopMobile(14, 17, text, context);
    }

    return myContainerHomeViewDesktopMobile(14, 23, text, context);
  });
}
