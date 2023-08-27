import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';
import 'package:enstab_wbr_helix/widgets/associations_widgets/myclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NategView extends StatelessWidget {
  final EnstabAssociation association;

  const NategView({super.key, required this.association});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        "https://www.linkedin.com/in/nateg-enstab-student-chapter/?originalSubdomain=tn");

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

    List<String> imgListTrees = [];
    for (int i = 1; i <= 7; i++) {
      final imageName = 'nateg_$i.jpg';
      imgListTrees.add('assets/associations/nateg/voluntary/$imageName');
    }

    List<String> imgListWorkshop = [];
    for (int i = 1; i <= 7; i++) {
      final imageName = 'nateg_$i.jpg';
      imgListWorkshop.add('assets/associations/nateg/workshops/$imageName');
    }
    return myClubWidget(
        _launchInWebViewWithoutJavaScript,
        _url,
        context,
        imgListTrees,
        imgListWorkshop,
        "assets/associations/nateg_enstab.jpg",
        association.description,
        "NATEG ENSTAB",
        "assets/associations/nateg/NATEG_Family.jpg",
        "Tree day",
        "IOT Workshop");
  }
}
