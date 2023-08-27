import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';
import 'package:enstab_wbr_helix/widgets/associations_widgets/myclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ElectronixView extends StatelessWidget {
  final EnstabAssociation association;
  const ElectronixView({super.key, required this.association});

  @override
  Widget build(BuildContext context) {
    final Uri _url =
        Uri.parse("https://www.facebook.com/Club.Electronix.Enstab/");

    Future<void> _launchInWebViewWithoutJavaScript(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration:
            const WebViewConfiguration(enableJavaScript: false),
      )) {
        throw Exception('Could not launch $url');
      }
    }

    List<String> imgListEvent1 = [];
    for (int i = 1; i <= 10; i++) {
      final imageName = 'ensta_robots_$i.jpg';
      imgListEvent1.add(
          'assets/associations/electronix/events/ensta_robots_3/$imageName');
    }

    List<String> imgListEvents = [];
    for (int i = 1; i <= 10; i++) {
      final imageName = 'ensta_robots_$i.jpg';
      imgListEvents.add(
          'assets/associations/electronix/events/ensta_robots_1/$imageName');
    }

    return myClubWidget(
        _launchInWebViewWithoutJavaScript,
        _url,
        context,
        imgListEvents,
        imgListEvent1,
        "assets/associations/electronix_enstab.png",
        association.description,
        "ELECTRONIX",
        "assets/associations/electronix/ELECTRONIX_Family.jpg",
        "ENSTAROBOTS 1 ACE AGE",
        "ENSTAROBOTS 2 DOULICHA IN MEDINA");
  }
}
