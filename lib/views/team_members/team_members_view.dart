import 'package:enstab_wbr_helix/models/enstab_profs_models/enstab_profs_model.dart';
import 'package:enstab_wbr_helix/views/team_members/team_members_widget.dart';
import 'package:enstab_wbr_helix/widgets/blue_bar_widget/BlueBarWidget.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamMembersView extends StatelessWidget {
  const TeamMembersView({Key? key});

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
                children: [
                  blueBarWidget(context, "MEET THE TEAM"),
                  meetTheTeamGridView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
