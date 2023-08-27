import 'package:enstab_wbr_helix/models/helix_models/competition_model.dart';
import 'package:enstab_wbr_helix/views/helix/all_enstab_competitions/competitions_details.dart';
import 'package:enstab_wbr_helix/widgets/fade_transition.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Column buildCompetitionWidgetDesktopMobile(
    double font1,
    double height,
    String text,
    ScrollController _scrollController,
    List<EnstabCompetitions> competitionsList) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 8, 24, 243),
          fontWeight: FontWeight.w800,
          fontSize: font1,
        ),
      ),
      Divider(
        color: Colors.black,
        thickness: 0.5,
      ),
      SizedBox(height: 25),
      ListView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        itemCount: competitionsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              fadeNavigation(
                context,
                EnstabCompetitionsDetailPage(
                  competition: competitionsList[index],
                ),
              );
            },
            child: Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(competitionsList[index]
                      .image), // Image path from the competition model
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  competitionsList[index].type,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ).py32();
        },
      ),
    ],
  );
}
