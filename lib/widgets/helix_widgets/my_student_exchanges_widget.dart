import 'dart:ui' as ui;
import 'package:enstab_wbr_helix/widgets/fade_transition.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

List<String> imagePaths = [];
Container myStudentExchangeContainerDesktopMobile(
  double fontsize,
  double height,
  ScrollController _scrollController,
  List<String> myList,
  List<Widget> itemRoutes,
  List<String> imagePaths,
) {
  return Container(
    padding: const EdgeInsets.all(12.0),
    child: SingleChildScrollView(
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          return FutureBuilder<void>(
            future: fetchImage(imagePaths[index]),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                    width: 500,
                    height: 500,
                    child: Center(child: CircularProgressIndicator()));
              }

              if (snapshot.hasError) {
                return Text('Error loading image: ${snapshot.error}');
              }

              return Container(
                height: height,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    fadeNavigation(context, itemRoutes[index]);
                  },
                  child: Stack(
                    children: [
                      // Blurred image background
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                imagePaths[index]), // Load from network
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: BackdropFilter(
                            filter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          myList[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    ),
  );
}

Future<void> fetchImage(String imagePath) async {
  try {
    final ref = FirebaseStorage.instance.ref(imagePath);
    imagePaths.add(await ref.getDownloadURL()); // Add the image URL to the list
  } catch (e) {
    print('Error fetching image: $e');
  }
}
