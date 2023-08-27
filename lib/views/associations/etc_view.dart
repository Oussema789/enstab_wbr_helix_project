import 'package:enstab_wbr_helix/widgets/associations_widgets/myclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/helix_models/association_model.dart';

class ETCView extends StatelessWidget {
  final EnstabAssociation association;
  const ETCView({super.key, required this.association});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse("https://first-jedi-enstab.firebaseapp.com/");

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

    List<String> imgListAnnuel4 = [];
    for (int i = 1; i <= 8; i++) {
      final imageName = 'etc_forum$i.jpg';
      imgListAnnuel4.add('assets/associations/etc/events/4 annuel/$imageName');
    }

    List<String> imgListAnnuel5 = [];
    for (int i = 1; i <= 15; i++) {
      final imageName = 'etc_forum$i.jpg';
      imgListAnnuel5.add('assets/associations/etc/events/5 annuel/$imageName');
    }
    return myClubWidget(
        _launchInWebViewWithoutJavaScript,
        _url,
        context,
        imgListAnnuel4,
        imgListAnnuel5,
        "assets/associations/ETC_Logo.png",
        association.description,
        "ETC ENSTAB",
        "assets/associations/etc/ETC_Family.jpg",
        "FORUM ANNUAL 4",
        "FORUM ANNUAL 5");
  }
}
