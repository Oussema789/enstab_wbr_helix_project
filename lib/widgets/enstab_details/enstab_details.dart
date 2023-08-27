import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:enstab_wbr_helix/widgets/imageslider/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class UniversityDetails extends StatefulWidget {
  const UniversityDetails({super.key});

  @override
  State<UniversityDetails> createState() => _UniversityDetailsState();
}

class _UniversityDetailsState extends State<UniversityDetails> {
  final String txt =
      '''The National School of Advanced Sciences and Technologies in Borj Cédria (ENSTAB) was established in the academic year 2014/2015 to address Tunisia's economic and industrial development needs by educating versatile engineers with strong multidisciplinary skills in the field of Advanced Technologies, including energy and industrial systems.

The National School of Advanced Sciences and Technologies (ENSTA) in Borj Cédria is a state engineering school dedicated to excellence, placing students at the core of its concerns in accordance with international normative standards. Situated within a research-intensive technopole, ENSTAB's mission is to nurture well-rounded engineers equipped with robust multidisciplinary competencies in Advanced Technologies, encompassing clean energies, advanced electronics, nanotechnologies, and Industry 4.0.

Our commitment is to cultivate engineer-entrepreneurs capable of developing not only scientific and technical knowledge but also managerial and entrepreneurial skills to master the intricacies of industrial system management and administration. This is done to meet the demands of companies seeking enhanced efficiency and efficacy, while adhering to international standards in quality management systems. Integrated into its socio-economic milieu, ENSTAB shapes socially responsible future engineers, enabling them to adapt to various professions related to the job market's needs and integrate into diverse sectors of activity. This is facilitated by providing them with intelligent and innovative technological awareness.''';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        var textAlignment = TextAlign.left;

        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          // Logic for mobile screen size
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
                  offset: const Offset(0, 7), // changes the shadow position
                ),
              ],
            ),
            height: context.screenHeight * 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText(
                    "ENSTAB \nCARTHAGE UNIVERSITY",
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w800,
                        height: 0.9,
                        fontSize: size.width * 0.05),
                    textAlign: textAlignment,
                  ),
                ]),
                SizedBox(height: size.height * 0.04),
                Expanded(
                  child: Text(
                    txt,
                    maxLines: 100,
                    textAlign: textAlignment,
                  ),
                ),
                VerticalSliderImages(),
              ],
            ),
          );
        }

        // Logic for desktop and tablet screen sizes
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
                offset: const Offset(0, 7), // changes the shadow position
              ),
            ],
          ),
          height: SizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? size.width * 0.6
              : size.height * 0.3,

          /*SizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? size.height * 0.3
                  : size.height * 0.25,*/
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.screenWidth / 13.6,
                ),
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText(
                    "ENSTAB \nCARTHAGE UNIVERSITY",
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w800,
                        height: 0.9,
                        fontSize: size.width * 0.03),
                    textAlign: textAlignment,
                  ),
                ]),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Expanded(
                  child: Text(
                    txt,
                    style: TextStyle(
                      fontSize: SizingInformation.deviceScreenType ==
                              DeviceScreenType.desktop
                          ? size.height * 0.023
                          : SizingInformation.deviceScreenType ==
                                  DeviceScreenType.tablet
                              ? size.height * 0.02
                              : size.height * 0.013,
                    ),
                    textAlign: textAlignment,
                  ),
                ),
                VerticalSliderImages()
              ],
            ),
          ),
        ).p16();
      },
    );
  }
}
