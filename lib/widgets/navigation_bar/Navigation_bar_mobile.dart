import 'package:enstab_wbr_helix/widgets/drawer_widget.dart';
import 'package:enstab_wbr_helix/widgets/navigation_bar/navigation_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                _showDrawer(context);
              },
              icon: const Icon(Icons.menu),
            ),
            const NavBarLogo(),
          ],
        ),
      ),
    );
  }

  void _showDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => CustomDrawer(),
    );
  }
}
