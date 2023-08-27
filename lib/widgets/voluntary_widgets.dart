import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget voluntaryWidget(BuildContext context, String text, String name,
    Future<List<String>> imgList) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name, // Assuming workshop is an instance of the Workshop class
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 24, 243),
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                      child: Text(
                          text)), // Assuming workshop is an instance of the Workshop class
                ],
              ),
              SizedBox(height: 8),
              FutureBuilder<List<String>>(
                future:
                    imgList, // Assuming imageList is a Future<List<String>> returned from your function
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(); // Show a loading indicator while images are being fetched
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Text('No images available.');
                  } else {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Show the larger image when tapped
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                child: Image.network(
                                  snapshot.data![
                                      index], // Use the image URL from the snapshot data
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: NetworkImage(snapshot.data![
                                    index]), // Use the image URL from the snapshot data
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name, // Assuming workshop is an instance of the Workshop class
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 24, 243),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                    child: Text(
                        text)), // Assuming workshop is an instance of the Workshop class
              ],
            ),
            SizedBox(height: 8),
            FutureBuilder<List<String>>(
              future:
                  imgList, // Assuming imageList is a Future<List<String>> returned from your function
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Show a loading indicator while images are being fetched
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text('No images available.');
                } else {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Show the larger image when tapped
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: Image.network(
                                snapshot.data![
                                    index], // Use the image URL from the snapshot data
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(snapshot.data![
                                  index]), // Use the image URL from the snapshot data
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ).p64();
    },
  );
}

Widget dividerWidget(String name) {
  return ResponsiveBuilder(builder: (context, SizingInformation) {
    if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Color.fromARGB(255, 8, 24, 243),
                fontWeight: FontWeight.w800,
                fontSize: 15,
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Color.fromARGB(255, 8, 24, 243),
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
      ],
    ).p32();
  });
}
