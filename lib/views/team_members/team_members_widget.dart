import 'package:enstab_wbr_helix/models/enstab_profs_models/enstab_profs_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamMemberWidget extends StatefulWidget {
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

  @override
  State<TeamMemberWidget> createState() => _TeamMemberWidgetState();
}

class _TeamMemberWidgetState extends State<TeamMemberWidget> {
  String? imageurl;

  void _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: widget.email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  void initState() {
    super.initState();
    fetchImage(); // Call the fetchImage function when the widget is initialized
  }

  void fetchImage() async {
    try {
      final ref = FirebaseStorage.instance.ref(widget.imageUrl);
      imageurl = await ref.getDownloadURL();
      setState(() {}); // Trigger a rebuild to display the fetched image
    } catch (e) {
      print('Error fetching image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return containerEnstabTeamInfo(context, 3, 20);
        }
        return containerEnstabTeamInfo(context, 1, 30);
      },
    );
  }

  Container containerEnstabTeamInfo(
    BuildContext context,
    int n,
    double fontsize,
  ) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 20), // Adjust padding as needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: context.screenWidth * n / 8.5,
            height: context.screenWidth * n / 8.5,
            child: imageurl != null && imageurl!.isNotEmpty
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(imageurl!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
          SizedBox(height: 8),
          Text(
            widget.name,
            style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            widget.position,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: _launchEmail,
            child: Text(
              widget.email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget meetTheTeamGridView() {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return meetEnstabTeamWidget(1);
      }
      return Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: enstabProfList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return TeamMemberWidget(
              email: enstabProfList[index].email,
              name: enstabProfList[index].name,
              imageUrl: enstabProfList[index].imagePath,
              position: enstabProfList[index].position,
            );
          },
        ),
      );
    },
  );
}

Container meetEnstabTeamWidget(int n) {
  return Container(
    padding: const EdgeInsets.all(12.0),
    child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: enstabProfList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: n,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return TeamMemberWidget(
          email: enstabProfList[index].email,
          name: enstabProfList[index].name,
          imageUrl: enstabProfList[index].imagePath,
          position: enstabProfList[index].position,
        );
      },
    ),
  );
}
