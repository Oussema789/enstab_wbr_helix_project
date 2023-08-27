import 'package:enstab_wbr_helix/views/home/home_content_desktop.dart';
import 'package:enstab_wbr_helix/views/home/home_content_mobile.dart';
import 'package:enstab_wbr_helix/widgets/centeredbox.dart';

import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          const NavigationBarWidget().p32(),
          Expanded(
            child: Center(
              child: CenteredBox(
                child: Container(
                  width: size.width,
                  height: size.height * 0.9,
                  child: ScreenTypeLayout(
                    mobile: const HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
