import 'package:enstab_wbr_helix/models/helix_models/association_model.dart';
import 'package:enstab_wbr_helix/widgets/associations_widgets/myclub_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IeeeSBView extends StatelessWidget {
  final EnstabAssociation association;
  const IeeeSBView({super.key, required this.association});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse("https://enstab.ieee.tn/");

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

    List<String> imgListEXTREM = [];
    for (int i = 1; i <= 11; i++) {
      final imageName = 'extrem$i.jpg';
      imgListEXTREM.add('assets/associations/ieee/events/EXTREM/$imageName');
    }

    List<String> imgListTsyp = [];
    for (int i = 1; i <= 10; i++) {
      final imageName = 'tsyp$i.jpg';
      imgListTsyp.add('assets/associations/ieee/events/TSYP1/$imageName');
    }
    return myClubWidget(
        _launchInWebViewWithoutJavaScript,
        _url,
        context,
        imgListTsyp,
        imgListEXTREM,
        "assets/associations/enstab_ieee.png",
        association.description,
        "IEEE",
        "assets/associations/ieee/IEEE_Family.jpg",
        "TSYP",
        "IEEE EXTREM");
  }
}
