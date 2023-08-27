import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:enstab_wbr_helix/widgets/Entrepreneurship/peec_widget_details_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class PeecProjectDetailPage extends StatelessWidget {
  final PeecProjects project;
  const PeecProjectDetailPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    _openWebsite() async {
      const url = "https://deepvolt.io/home";
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw "Could not launch $url";
      }
    }

    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    project.name == "START-UP DEEPVOLT"
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    _openWebsite();
                                  },
                                  child: SizedBox(
                                      width: 100,
                                      height: 150,
                                      child: Image.asset(project.image))),
                            ],
                          ).py20()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/associations/peec_projects/peec_logo.png",
                                width: 100,
                                height: 100,
                              ),
                              Image.asset(
                                "assets/logo.png",
                                width: 100,
                                height: 100,
                              )
                            ],
                          ).p32(),
                    myRow(context, project).p32(),
                  ],
                ),
              ),
            ),
          );
        }
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                project.name == "START-UP DEEPVOLT"
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                _openWebsite();
                              },
                              child: Image.asset(project.image)),
                        ],
                      ).py20()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/associations/peec_projects/peec_logo.png",
                          ),
                          Image.asset("assets/logo.png")
                        ],
                      ).p32(),
                myRow(context, project).p32(),
              ],
            ),
          ),
        );
      },
    );
  }
}
