import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:shimmer/shimmer.dart';

class PartnerLogosScreen extends StatelessWidget {
  final Future<List<String>> imagesFuture;

  PartnerLogosScreen({required this.imagesFuture});

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
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      children: List.generate(36, (index) {
                        return Container(
                          height: crossAxisCount == 2 ? 50 : 100,
                          width: crossAxisCount == 2 ? 50 : 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
          );
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
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: snapshot.data!.map((logoPath) {
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Image.network(
                              logoPath,
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: crossAxisCount == 2 ? 50 : 100,
                        width: crossAxisCount == 2 ? 50 : 100,
                        child: Image.network(logoPath),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          );
        }
      },
    );
  }
}
