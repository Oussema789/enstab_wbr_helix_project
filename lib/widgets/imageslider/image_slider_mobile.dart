import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VerticalImageSliderMobile extends StatelessWidget {
  const VerticalImageSliderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [];
    for (int i = 1; i <= 5; i++) {
      final imageName = 'enstab$i.jpg';
      imgList.add('assets/enstab_images/$imageName');
    }

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 3 / 4, // Adjust the aspect ratio as needed
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: imageSliders,
      ),
    );
  }
}
