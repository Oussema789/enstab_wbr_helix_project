import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shimmer/shimmer.dart';

class ImageGridView extends StatelessWidget {
  final Future<List<String>> imagesFuture;

  ImageGridView({required this.imagesFuture});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: imagesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade100,
              highlightColor: Colors.grey.shade300,
              child: ResponsiveBuilder(
                builder: (BuildContext context,
                    SizingInformation sizingInformation) {
                  final crossAxisCount = sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? 2
                      : 5;
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount, // Adjust as needed
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: crossAxisCount, // Number of shimmer cells
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ); // Show a loading indicator while fetching images
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('No images available.');
        } else {
          return ResponsiveBuilder(
            builder: (context, sizingInformation) {
              final crossAxisCount =
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? 2
                      : 5;

              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Image.network(
                            snapshot.data![index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(snapshot.data![index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
