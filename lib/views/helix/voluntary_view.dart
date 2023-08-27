import 'package:enstab_wbr_helix/models/helix_models/voluntary_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:enstab_wbr_helix/widgets/voluntary_widgets.dart';

class VoluntaryView extends StatelessWidget {
  const VoluntaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageHeight = context.screenHeight * 0.45;
    final imageWidth = context.screenHeight * 0.45;
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "ENSTAB Students's Voluntary work",
                        style: TextStyle(
                          fontSize: context.screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 8, 24, 243),
                        ),
                      ).p12(),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  voluntaryWidget(context, text1, "ANIMAL SHELTER VISIT | ETC",
                          imgListAnimals)
                      .py20(),
                  voluntaryWidget(
                          context, text, "TREE DAY | NATEG", imgListTrees)
                      .py20(),
                  voluntaryWidget(
                          context,
                          text2,
                          "Children Visit | NATEG & ELECTRONIX",
                          imgListChildren)
                      .py20(),
                ],
              ).p12(),
            ),
          );
        }
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "ENSTAB Students's Voluntary work",
                      style: TextStyle(
                        fontSize: context.screenWidth * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 24, 243),
                      ),
                    ).p12(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final logo in [
                          'logo.png',
                          'ETC_Logo.png',
                          'nateg_enstab.jpg',
                          'electronix_enstab.png',
                        ])
                          Expanded(
                            child: Image.asset(
                              logo == "logo.png"
                                  ? "assets/$logo"
                                  : "assets/associations/$logo",
                            ).px32(),
                          ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                voluntaryWidget(context, text1, "ANIMAL SHELTER VISIT | ETC",
                        imgListAnimals)
                    .py20(),
                voluntaryWidget(context, text, "TREE DAY | NATEG", imgListTrees)
                    .py20(),
                voluntaryWidget(context, text2,
                        "Children Visit | NATEG & ELECTRONIX", imgListChildren)
                    .py20(),
              ],
            ).p64(),
          ),
        );
      },
    );
  }
}
