import 'package:enstab_wbr_helix/widgets/labs_widgets/labs_widgets.dart';
import 'package:enstab_wbr_helix/widgets/research_widgets/unit_services_widgets/my_unit_services_container.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UnitServicesView extends StatelessWidget {
  const UnitServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myPageHeading(context, "Service units").p32(),
          myUnitSericesContainer().p32(),
          const Text('© 2023 ENSTAB.'),
        ],
      )),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: TextStyle(
            color: Color.fromARGB(255, 8, 24, 243),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
