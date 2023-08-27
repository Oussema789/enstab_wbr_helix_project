import 'package:enstab_wbr_helix/views/associations/electronix_view.dart';
import 'package:enstab_wbr_helix/views/associations/gdsc_view.dart';
import 'package:enstab_wbr_helix/views/associations/nateg_view.dart';
import 'package:enstab_wbr_helix/widgets/associations_widgets/association_gridview_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/labs_widgets/labs_widgets.dart';
import 'package:flutter/material.dart';
import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';
import 'package:velocity_x/velocity_x.dart';

import 'etc_view.dart';
import 'ieee_sb_view.dart';

class AssociationView extends StatelessWidget {
  AssociationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            myPageHeading(context, "ENSTAB ASSOCIATIONS & CLUBS").p64(),
            myGridViewWidget(),
            Container(
              color: Color.fromARGB(255, 8, 24, 243),
              height: 200,
              width: context.screenWidth,
              child: Center(
                child: Text(
                  "When you learn, teach. When you get, give...",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToSecondRoute(
    BuildContext context, EnstabAssociation association) {
  Navigator.push(
    context,
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (association.name) {
          case 'ENSTAB IEEE SB':
            return IeeeSBView(association: association);
          case 'ETC':
            return ETCView(association: association);
          case 'GDSC':
            return GDSCView(association: association);
          case 'NATEG':
            return NategView(association: association);
          case 'ELECTRONIX':
            return ElectronixView(association: association);
          default:
            return Container();
        }
      },
    ),
  );
}
