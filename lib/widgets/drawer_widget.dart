import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:enstab_wbr_helix/views/Entrepreneurship/peec_project.dart';
import 'package:enstab_wbr_helix/views/Research/research_view.dart';
import 'package:enstab_wbr_helix/views/helix/helix_view.dart';
import 'package:enstab_wbr_helix/views/home/HomeView.dart';
import 'package:enstab_wbr_helix/views/professional_collaborations/Professional_Colaboration_View.dart';
import 'package:enstab_wbr_helix/views/team_members/team_members_view.dart';
import 'package:enstab_wbr_helix/widgets/fade_transition.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: context.screenHeight * 0.4,
              width: context.screenWidth,
              child: DrawerHeader(
                child: Image.asset("assets/enstab_images/enstab1.jpg",
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                _updateSelectedIndex(0);
                Navigator.pop(context);
                fadeNavigation(context, const HomeView());
              },
              selected: _selectedIndex == 0,
              selectedTileColor:
                  Colors.blue, // Set the selected tile color to blue
            ),
            ListTile(
              title: const Text('Helix'),
              onTap: () {
                _updateSelectedIndex(1);
                Navigator.pop(context); // Close the drawer overlay.
                fadeNavigation(context, const HelixView());
              },
              selected: _selectedIndex == 1,
              selectedTileColor:
                  Colors.blue, // Set the selected tile color to blue
            ),
            ListTile(
              title: const Text('Entrepreneurship'),
              onTap: () {
                _updateSelectedIndex(2);
                Navigator.pop(context); // Close the drawer overlay.
                fadeNavigation(
                    context,
                    PeecProjectsView(
                      peecProject: peecProjects[0],
                    ));
              },
              selected: _selectedIndex == 2,
              selectedTileColor:
                  Colors.blue, // Set the selected tile color to blue
            ),
            ListTile(
              title: const Text('Research'),
              onTap: () {
                _updateSelectedIndex(3);
                Navigator.pop(context); // Close the drawer overlay.
                fadeNavigation(context, const ResearchView());
              },
              selected: _selectedIndex == 3,
              selectedTileColor:
                  Colors.blue, // Set the selected tile color to blue
            ),
            ListTile(
              title: const Text('Professional Collaborations'),
              onTap: () {
                _updateSelectedIndex(4);
                Navigator.pop(context);
                fadeNavigation(context, const ProfessionalColaborationView());
              },
              selected: _selectedIndex == 4,
              selectedTileColor:
                  Colors.blue, // Set the selected tile color to blue
            ),
            ListTile(
              title: const Text('Meet the team'),
              onTap: () {
                _updateSelectedIndex(5);
                Navigator.pop(context);
                fadeNavigation(context, const TeamMembersView());
              },
              selected: _selectedIndex == 5,
              selectedTileColor:
                  Colors.blue, // Set the selected tile color to blue
            ),
          ],
        ),
      ),
    );
  }

  // Function to update the selected index
  void _updateSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
