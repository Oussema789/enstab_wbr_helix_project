import 'package:enstab_wbr_helix/models/helix_models/competition_model.dart';
import 'package:enstab_wbr_helix/widgets/helix_widgets/gridView_competition_Details_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/images_grid_view_desktop_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class EnstabCompetitionsDetailPage extends StatelessWidget {
  final EnstabCompetitions competition;

  const EnstabCompetitionsDetailPage({Key? key, required this.competition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.blue,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  competition.image,
                  fit: BoxFit.cover,
                ).py32(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    competition.type,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      competition.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ImageGridView(imagesFuture: competition.images),
            ],
          ).p16(),
        ),
      ),
    );
  }
}
