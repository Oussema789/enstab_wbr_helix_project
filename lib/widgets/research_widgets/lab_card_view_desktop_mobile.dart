import 'package:enstab_wbr_helix/models/need_assessment_model.dart/labs_model.dart';
import 'package:enstab_wbr_helix/widgets/Home_widgets/Home_widgets.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/grid_view_images_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LabCard extends StatelessWidget {
  final Lab lab;

  LabCard({required this.lab});

  @override
  Widget build(BuildContext context) {
    const url_larina = "https://www.linkedin.com/company/larina-ucar/";
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2), // changes the shadow position
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  lab.name,
                  style: TextStyle(
                      color: Color.fromARGB(255, 8, 24, 243),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Column(
                  children: [
                    Text(lab.description),
                    SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        openWebsite(url_larina);
                      },
                      child: Image.asset(
                        "assets/larina/Larina.png",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                gridViewImages(laRINAImags),
                // Assuming this is a valid function call
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2), // changes the shadow position
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                lab.name,
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 24, 243),
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: Text(lab.description)),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      openWebsite(url_larina);
                    },
                    child: Image.asset(
                      "assets/larina/Larina.png",
                      scale: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              gridViewImages(laRINAImags),
              // Assuming this is a valid function call
            ],
          ),
        );
      },
    );
  }
}
