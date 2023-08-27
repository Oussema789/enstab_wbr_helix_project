import 'package:enstab_wbr_helix/widgets/navigation_bar/Navigation_bar_mobile.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/Navigation_bar_tablette_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavigationBarTabletDesktop(),
      mobile: NavigationBarMobile(),
    );
  }
}
