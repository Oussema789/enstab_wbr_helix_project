import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:enstab_wbr_helix/views/Research/research_view.dart';
import 'package:enstab_wbr_helix/views/Entrepreneurship/peec_project.dart';
import 'package:enstab_wbr_helix/views/helix/helix_view.dart';
import 'package:enstab_wbr_helix/views/home/HomeView.dart';
import 'package:enstab_wbr_helix/views/professional_collaborations/Professional_Colaboration_View.dart';
import 'package:enstab_wbr_helix/views/team_members/team_members_view.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/Navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'navigation_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenWidth / 13.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItems(
                onPress: () {
                  _PageRoutingFunction(context, const HomeView());
                },
                title: "Home",
              ),
              mySideBox(context),
              NavBarItems(
                onPress: () {
                  _PageRoutingFunction(context, const HelixView());
                },
                title: "Helix",
              ),
              mySideBox(context),
              NavBarItems(
                onPress: () {
                  _PageRoutingFunction(
                      context,
                      PeecProjectsView(
                        peecProject: peecProjects[0],
                      ));
                },
                title: "Entrepreneurship",
              ),
              mySideBox(context),
              NavBarItems(
                onPress: () {
                  _PageRoutingFunction(context, const ResearchView());
                },
                title: "Research",
              ),
              mySideBox(context),
              NavBarItems(
                onPress: () {
                  _PageRoutingFunction(
                      context, const ProfessionalColaborationView());
                },
                title: "Professional Collaboration",
              ),
              mySideBox(context),
              NavBarItems(
                onPress: () {
                  _PageRoutingFunction(context, const TeamMembersView());
                },
                title: "Meet the team",
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox mySideBox(BuildContext context) {
    return SizedBox(
      width: context.screenWidth / 50,
    );
  }
}

Future _PageRoutingFunction(BuildContext context, Widget widget) {
  return Navigator.push(
    context,
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      pageBuilder: (context, animation, secondaryAnimation) => widget,
    ),
  );
}
