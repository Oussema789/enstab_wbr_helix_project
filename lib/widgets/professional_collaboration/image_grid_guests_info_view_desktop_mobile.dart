import 'package:enstab_wbr_helix/models/Professional_collaborations/forum_model.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart'; // Make sure you have this import

class ImageGridGuestsInfoView extends StatelessWidget {
  final Future<List<EnstabGuests>> guestInfoFuture;

  ImageGridGuestsInfoView({required this.guestInfoFuture});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EnstabGuests>>(
      future: guestInfoFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Shimmer.fromColors(
              baseColor: const Color.fromARGB(255, 216, 200, 200),
              highlightColor: Color.fromARGB(255, 110, 92, 92),
              child: ResponsiveBuilder(
                builder: (BuildContext context,
                    SizingInformation sizingInformation) {
                  final crossAxisCount = sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? 2
                      : 4;
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10, // Number of shimmer cells
                    itemBuilder: (context, index) {
                      return _buildShimmerCell(crossAxisCount, context);
                    },
                  );
                },
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('No guest information available.');
        } else {
          return ResponsiveBuilder(
            builder: (context, sizingInformation) {
              final crossAxisCount =
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? 2
                      : 4;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return _buildGuestInfoCell(
                      snapshot.data![index], crossAxisCount, context);
                },
              );
            },
          );
        }
      },
    );
  }

  Widget _buildShimmerCell(int crossAxisCount, BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.screenWidth / 8.5,
          height: context.screenWidth / 8.5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: context.screenWidth * 2 / 8.5,
          height: 14,
          color: Colors.white,
        ),
        SizedBox(height: 8),
        Container(
          width: context.screenWidth * 2 / 8.5,
          height: 10,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _buildGuestInfoCell(
      EnstabGuests guest, int crossAxisCount, BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.screenWidth / 8.5,
          height: context.screenWidth / 8.5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  guest.image), // Replace with Firebase Storage URL
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          guest.name,
          style: TextStyle(
            fontSize: crossAxisCount == 2 ? 14 : 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          guest.position,
          style: TextStyle(
            color: Colors.grey,
            fontSize: crossAxisCount == 2 ? 10 : 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
