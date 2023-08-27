import 'package:enstab_wbr_helix/models/enstab_program_model.dart';
import 'package:enstab_wbr_helix/models/enstab_project.dart';
import 'package:enstab_wbr_helix/models/master_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../googlemap_exemple.dart';

openWebsite(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}

Widget myContainer(String text) {
  Map<String, String> textToUrl = {
    "To get more information about ENSTAB program , Click here.":
        "https://docs.google.com/presentation/d/1gwmR4eAwcxyzFLYbqpJobzbx7_kDbba3/edit?usp=sharing&ouid=110277128132028668930&rtpof=true&sd=true",
    "To get more information about 2I2T Master Degree , Click here.":
        "https://www.wipo.int/academy/fr/news/2022/news_0033.html",
    "To get more information about MaDE Master Degree , Click here.":
        "https://drive.google.com/file/d/1BDKalipV8kjTm_UtMAj4Jj7PUJDHZOi4/view?usp=sharing"
  };
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes the shadow position
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            if (textToUrl.containsKey(text)) {
              openWebsite(textToUrl[text]!);
            }
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes the shadow position
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          if (textToUrl.containsKey(text)) {
            openWebsite(textToUrl[text]!);
          }
        },
        child: Center(
          child: Text(text),
        ),
      ),
    ).p16();
  });
}

Widget buildDescriptionAndImage(
    BuildContext context, List<MasterEnstab> list, int index) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Container(
        height: context.screenHeight * 0.7,
        width: context.screenWidth,
        child: Column(
          children: [
            buildDescriptionText(list[index]),
            const SizedBox(height: 10),
            buildImage(list[index]),
          ],
        ),
      );
    }

    return Container(
      height: context.screenHeight * 0.4,
      child: Row(
        children: [
          Expanded(child: buildDescriptionText(list[index])),
          const SizedBox(width: 50),
          Expanded(child: buildImage(list[index])),
        ],
      ),
    );
  });
}

Widget buildDescriptionText(MasterEnstab master) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Text(
        master.description,
        style: TextStyle(
          fontSize: 14,
        ),
      );
    }
    return Text(
      master.description,
    );
  });
}

Widget buildImage(MasterEnstab master) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
    child: Image.asset(
      master.image,
      fit: BoxFit.cover,
    ),
  );
}

Widget buildProgramDescription(
    BuildContext context, List<MasterEnstab> list, int index) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Container(
        height: context.screenHeight * 1.6,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes the shadow position
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildHeaderText(list, index).py4(),
                buildDescriptionAndImage(context, list, index),
              ],
            ).p4(),
            const Text(
              "What does this program cover?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              list[index].program,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes the shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildHeaderText(list, index).py32(),
                buildDescriptionAndImage(context, list, index),
              ],
            ),
          ).p32(),
          const Text(
            "What does this program cover?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            list[index].program,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    ).p16();
  });
}

Widget buildHeaderText(List<MasterEnstab> master, int index) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Text(
          master[index].name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        );
      }

      return Text(
        master[index].name,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      );
    },
  );
}

Widget EnstabProgramWidget(List<EnstabProgram> programs, int index) {
  if (index < 0 || index >= programs.length) {
    return Container();
  }

  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes the shadow position
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              programs[index].title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ).py20(),
            Column(children: [
              Text(
                programs[index].program,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(programs[index].image)
            ]),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes the shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            programs[index].title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ).py20(),
          Row(children: [
            Expanded(child: Text(programs[index].program)),
            Expanded(child: Image.asset(programs[index].image))
          ]),
        ],
      ),
    ).p16();
  });
}

Widget EnstabProject(BuildContext context) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes the shadow position
            ),
          ],
        ),
        child: Column(
          children: [
            /*
        SizedBox(
          height: context.screenWidth * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/logo.png")],
          ),
        ).py16(),*/
            Text(
              enstabProjectDescription,
              style: TextStyle(
                fontSize: 14,
              ),
            ).p4(),
            Text(
              smqISO,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              enstabProjectDescriptionSMQ,
              style: TextStyle(
                fontSize: 14,
              ),
            ).p4(),
          ],
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes the shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          /*
        SizedBox(
          height: context.screenWidth * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/logo.png")],
          ),
        ).py16(),*/
          Text(enstabProjectDescription).p32(),
          Text(
            smqISO,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Row(
            children: [
              Expanded(child: Text(enstabProjectDescriptionSMQ).p32()),
              SizedBox(
                height: context.screenWidth * 2 / 13.6,
                width: context.screenWidth * 2 / 13.6,
                child: Image.asset("assets/iso_21001.png"),
              ),
            ],
          ),
        ],
      ),
    ).p16();
  });
}

class FancyCardWidget extends StatefulWidget {
  @override
  State<FancyCardWidget> createState() => _FancyCardWidgetState();
}

class _FancyCardWidgetState extends State<FancyCardWidget> {
  @override
  Widget build(BuildContext context) {
    String enstabLocation =
        "https://www.google.com/maps/search/?api=1&query=${currentLocation.latitude},${currentLocation.longitude}";
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Container(
          width: context.screenWidth,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyRowForInfo(
                  icon: Icons.school,
                  info: 'Campus University of the Borj-Cedria Technopôle',
                  url: enstabLocation),
              SizedBox(height: 16),
              MyRowForInfo(
                  icon: Icons.location_on,
                  info: 'Tunisia, BP 122 Hammam-Chott 1164',
                  url: enstabLocation),
              SizedBox(height: 16),
              MyRowForInfo(
                  icon: Icons.phone,
                  info: 'Tel: (+216) 79 326 768',
                  url: "tel:+21679 326 768"),
              SizedBox(height: 16),
              MyRowForInfo(
                  icon: Icons.print,
                  info: 'Fax: (+216) 79 326 797',
                  url: "tel:+21679 326 797"),
              SizedBox(height: 16),
              MyRowForInfo(
                  icon: Icons.email,
                  info: 'ensta-b.dir@ensta-b.rnu.tn',
                  url: "mailto:ensta-b.dir@ensta-b.rnu.tn"),
            ],
          ),
        );
      }
      return Container(
        width: context.screenWidth,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyRowForInfo(
                icon: Icons.school,
                info: 'Campus University of the Borj-Cedria Technopôle',
                url: enstabLocation),
            SizedBox(height: 16),
            MyRowForInfo(
                icon: Icons.location_on,
                info: 'Tunisia, BP 122 Hammam-Chott 1164',
                url: enstabLocation),
            SizedBox(height: 16),
            MyRowForInfo(
                icon: Icons.phone,
                info: 'Tel: (+216) 79 326 768',
                url: "tel:+21679 326 768"),
            SizedBox(height: 16),
            MyRowForInfo(
                icon: Icons.print,
                info: 'Fax: (+216) 79 326 797',
                url: "tel:+21679 326 797"),
            SizedBox(height: 16),
            MyRowForInfo(
                icon: Icons.email,
                info: 'ensta-b.dir@ensta-b.rnu.tn',
                url: "mailto:ensta-b.dir@ensta-b.rnu.tn"),
          ],
        ),
      ).p16();
    });
  }
}

class MyRowForInfo extends StatefulWidget {
  final IconData icon;
  final String info;
  final String url;

  MyRowForInfo({required this.icon, required this.info, required this.url});

  @override
  _MyRowForInfoState createState() => _MyRowForInfoState();
}

class _MyRowForInfoState extends State<MyRowForInfo> {
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Row(
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                widget.icon,
                color: Colors.black,
                size: 12,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 3,
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    textColor = Colors.blue;
                  });
                },
                onExit: (_) {
                  setState(() {
                    textColor = Colors.black;
                  });
                },
                child: InkWell(
                  onTap: () {
                    openWebsite(widget.url);
                  },
                  child: Text(
                    widget.info,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }
      return Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.black,
            size: 18,
          ),
          const SizedBox(width: 8),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                textColor = Colors.blue;
              });
            },
            onExit: (_) {
              setState(() {
                textColor = Colors.black;
              });
            },
            child: InkWell(
              onTap: () {
                openWebsite(widget.url);
              },
              child: Text(
                widget.info,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
