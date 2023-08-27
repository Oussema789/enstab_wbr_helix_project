import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamMemberWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String position;
  final String email;

  TeamMemberWidget({
    required this.imageUrl,
    required this.name,
    required this.position,
    required this.email,
  });

  void _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ).py20(),
        Text(
          position,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ).py8(),
        GestureDetector(
          onTap: _launchEmail,
          child: Text(
            email,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey, // Change the color to indicate it's clickable
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
