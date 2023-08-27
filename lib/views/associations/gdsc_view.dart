import 'package:enstab_wbr_helix/widgets/associations_widgets/myclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';

class GDSCView extends StatelessWidget {
  final EnstabAssociation association;
  const GDSCView({Key? key, required this.association}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        "https://gdsc.community.dev/ecole-nationale-des-sciences-et-technologies-avancees-a-borj-cedria-enstab/");

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

    List<String> imgListGdsc = [];
    for (int i = 1; i <= 5; i++) {
      final imageName = 'gdsc$i.jpg';
      imgListGdsc.add('assets/associations/gdsc/$imageName');
    }

    List<String> imgListEvents = [];
    for (int i = 1; i <= 12; i++) {
      final imageName = 'event$i.jpg';
      imgListEvents.add('assets/associations/gdsc/event/$imageName');
    }

    return myClubWidget(
      _launchInWebViewWithoutJavaScript,
      _url,
      context,
      imgListGdsc,
      imgListEvents,
      "assets/associations/gdsc_enstab.png",
      association.description,
      "GDSC ENSTAB",
      "assets/associations/gdsc/gdsc_familly.jpg",
      "ML Workshop",
      "ML Day",
    );
  }
}
