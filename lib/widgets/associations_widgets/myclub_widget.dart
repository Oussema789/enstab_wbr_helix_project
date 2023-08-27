import 'package:enstab_wbr_helix/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget myClubWidget(
  Future<void> _launchInWebViewWithoutJavaScript(Uri url),
  Uri _url,
  BuildContext context,
  List<String> imgListGdsc,
  List<String> imgListEvents,
  String myImage,
  String clubdescription,
  String myClubname,
  String myClubFamilyImage,
  String workshop,
  String events,
) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _launchInWebViewWithoutJavaScript(_url);
                  },
                  child: Container(
                    height: context.screenHeight * 0.4,
                    width: context.screenHeight * 0.4,
                    child: Image.asset(
                      myImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AnimatedText(
                          text: myClubname,
                          animationDuration: const Duration(milliseconds: 1500),
                          style: TextStyle(
                            color: Color.fromARGB(255, 8, 24, 243),
                            fontWeight: FontWeight.w800,
                            height: 0.9,
                            fontSize: context.screenWidth * 0.08,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          clubdescription,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          maxLines: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.amber,
                        child: Center(
                            child: Image.asset(myClubFamilyImage,
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
                myDividerWidget(
                  context,
                  workshop,
                  gridViewImages(imgListGdsc),
                ),
                SizedBox(
                  height: 50,
                ),
                myDividerWidget(
                  context,
                  events,
                  gridViewImages(imgListEvents),
                )
              ],
            ),
          ),
        ),
      ).px12();
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _launchInWebViewWithoutJavaScript(_url);
              },
              child: Container(
                height: context.screenHeight * 0.4,
                width: context.screenHeight * 0.4,
                child: Image.asset(
                  myImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AnimatedText(
                          text: myClubname,
                          animationDuration: const Duration(milliseconds: 1500),
                          style: TextStyle(
                            color: Color.fromARGB(255, 8, 24, 243),
                            fontWeight: FontWeight.w800,
                            height: 0.9,
                            fontSize: context.screenWidth * 0.03,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          clubdescription,
                          maxLines: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                              child: Image.asset(myClubFamilyImage,
                                  fit: BoxFit.cover)),
                        );
                      },
                      child: Container(
                        color: Colors.amber,
                        child: Center(
                            child: Image.asset(myClubFamilyImage,
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ),
              ],
            ).p32(),
            myDividerWidget(
              context,
              workshop,
              gridViewImages(imgListGdsc),
            ).p32(),
            SizedBox(
              height: 50,
            ),
            myDividerWidget(
              context,
              events,
              gridViewImages(imgListEvents),
            ).p32()
          ],
        ),
      ),
    );
  });
}

Widget myDividerWidget(
    BuildContext context, String workshop, Widget widgetSlider) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  workshop,
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
                widgetSlider,
              ],
            ),
          ),
        );
      }
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workshop,
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 24, 243),
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: 30),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            widgetSlider,
          ],
        ),
      ).px32();
    },
  );
}

Widget gridViewImages(List<String> imgs) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: imgs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Show the larger image when tapped
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Image.asset(
                    imgs[index],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imgs[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      );
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: imgs.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Show the larger image when tapped
            showDialog(
              context: context,
              builder: (context) => Dialog(
                child: Image.asset(
                  imgs[index],
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgs[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  });
}
