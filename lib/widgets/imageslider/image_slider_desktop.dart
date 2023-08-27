import 'package:flutter/material.dart';

class VerticalImageSliderDesktop extends StatelessWidget {
  const VerticalImageSliderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [];
    for (int i = 1; i <= 5; i++) {
      final imageName = 'enstab$i.jpg';
      imgList.add('assets/enstab_images/$imageName');
    }

    return Scaffold(
      body: Container(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: imgList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Show the larger image when tapped
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: Image.asset(
                          imgList[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(imgList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ), // Assuming this is a valid function call
          ],
        ),
      ),
    );
  }
}
