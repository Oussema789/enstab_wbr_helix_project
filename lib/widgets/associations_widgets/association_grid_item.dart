import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';
import 'package:enstab_wbr_helix/views/associations/associations_view.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GridItem extends StatelessWidget {
  final EnstabAssociation association;

  GridItem({required this.association});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToSecondRoute(context, association);
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  height: 400,
                  width: context.screenWidth,
                  child: Image.asset(
                    association.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                association.name,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 18, 0, 122),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
