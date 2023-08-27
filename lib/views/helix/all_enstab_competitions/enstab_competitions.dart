import 'package:enstab_wbr_helix/widgets/helix_widgets/build_competition_Widget_Desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:enstab_wbr_helix/models/helix_models/competition_model.dart';

class EnstabCompetitionsView extends StatelessWidget {
  const EnstabCompetitionsView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildCompetitionWidget(BuildContext context, String text,
        List<EnstabCompetitions> competitionsList) {
      ScrollController _scrollController = ScrollController();
      return ResponsiveBuilder(
        builder: (context, SizingInformation) {
          if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return buildCompetitionWidgetDesktopMobile(
                    15, 100, text, _scrollController, competitionsList)
                .px12();
          }
          return buildCompetitionWidgetDesktopMobile(
                  30, 200, text, _scrollController, competitionsList)
              .px64();
        },
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: context.screenWidth * 0.2,
                    width: context.screenWidth * 0.2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "ENSTAB COMPETITIONS",
                    style: TextStyle(
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 24, 243),
                    ),
                  ),
                ],
              ).px64(),
            ),
            SizedBox(height: 50),
            buildCompetitionWidget(
                context, "Internal Competitions", internalEnstabCompetitions),
            SizedBox(height: 50),
            buildCompetitionWidget(
                context, "External Competitions", externalEnstabCompetitions),
          ],
        ),
      ),
    );
  }
}
