import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:enstab_wbr_helix/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget myRow(BuildContext context, PeecProjects project) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedText(
                  text: project.name,
                  animationDuration: const Duration(milliseconds: 1500),
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 24, 243),
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: context.screenWidth * 0.07,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  project.description,
                  maxLines: 50,
                ),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                //color: Colors.amber,
                child: Center(
                    child: project.name == "START-UP DEEPVOLT"
                        ? Image.asset(
                            "assets/associations/peec_projects/peec_projects/startups/peec_2.jpg",
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            project.image,
                            fit: BoxFit.cover,
                          )),
              ),
            ),
          ],
        );
      }
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedText(
                    text: project.name,
                    animationDuration: const Duration(milliseconds: 1500),
                    style: TextStyle(
                      color: Color.fromARGB(255, 8, 24, 243),
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      fontSize: context.screenWidth * 0.03,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    project.description,
                    maxLines: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                //color: Colors.amber,
                child: Center(
                    child: project.name == "START-UP DEEPVOLT"
                        ? Image.asset(
                            "assets/associations/peec_projects/peec_projects/startups/peec_2.jpg",
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            project.image,
                            fit: BoxFit.cover,
                          )),
              ),
            ),
          ),
        ],
      );
    },
  );
}
