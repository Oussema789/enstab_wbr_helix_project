import 'package:enstab_wbr_helix/widgets/Entrepreneurship/peec_project_widget_Desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/blue_bar_widget/BlueBarWidget.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_bar.dart';
import 'package:enstab_wbr_helix/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:enstab_wbr_helix/widgets/associations_widgets/myclub_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class PeecProjectsView extends StatelessWidget {
  final PeecProjects peecProject;
  const PeecProjectsView({Key? key, required this.peecProject})
      : super(key: key);

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
                  blueBarWidget(context, "ENTREPRENEURSHIP"),
                  SizedBox(
                    height: 32,
                  ),
                  myDividerWidget(context, peecInfo.name,
                      peecWidget(peecInfo.description, peecInfo.image)),
                  SizedBox(
                    height: 20,
                  ),
                  myDividerWidget(
                    context,
                    antennePeec.name,
                    peecWidget(antennePeec.description, antennePeec.image),
                  ),
                  antenneTextWidget(),
                  gridViewImages(imgPeecAntenne),
                  SizedBox(
                    height: 20,
                  ),
                  EnstabPeecWidget(
                    text: "ENSTAB PEEC PROJECTS",
                    list: peecProjects,
                  ),
                  //SizedBox(height: 20 ),
                  //sociaEconomicDay("SOCIO-ECONOMIC DAY").px64(),
                  //Text("Description").px64(),
                  //gridViewImages(socioEconomicDayImgs).p64(),
                  Text('© 2023 ENSTAB.')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget gridViewImages(List<String> imgs) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return gridViewPeecProjectDesktopMobile(3, imgs);
        }
        return gridViewPeecProjectDesktopMobile(5, imgs).p32();
      },
    );
  }
}
