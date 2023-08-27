import 'package:enstab_wbr_helix/models/helix_models/peec_model.dart';
import 'package:enstab_wbr_helix/views/Entrepreneurship/peec_projectDetailPage.dart';
import 'package:enstab_wbr_helix/widgets/fade_transition.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class EnstabPeecWidget extends StatelessWidget {
  final String text;
  final List<dynamic> list;

  EnstabPeecWidget({required this.text, required this.list});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 24, 243),
                          fontWeight: FontWeight.w800,
                          height: 0.9,
                          fontSize: 20),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(enstabPeecproject),
                listViewWidget(list),
              ],
            ),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 24, 243),
                        fontWeight: FontWeight.w800,
                        height: 0.9,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            SizedBox(
              height: 25,
            ),
            Text(enstabPeecproject),
            SizedBox(
              height: 25,
            ),
            listViewWidget(list),
          ],
        ).p32();
      },
    );
  }
}

ListView listViewWidget(dynamic list) {
  ScrollController _controller = ScrollController();
  return ListView.builder(
    controller: _controller,
    shrinkWrap: true,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          fadeNavigation(
            context,
            PeecProjectDetailPage(
              project: list[index],
            ),
          );
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(list[index].image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              list[index].name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ).p32();
    },
  );
}

Widget peecWidget(
  String description,
  String image,
) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Column(
          children: [
            Text(description),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
          ],
        ).p12();
      }

      return Row(
        children: [
          Expanded(flex: 1, child: Text(description)),
          SizedBox(width: 30),
          Expanded(
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      );
    },
  );
}
