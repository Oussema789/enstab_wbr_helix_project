import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

const LatLng currentLocation = LatLng(36.7073271, 10.4266822);

class MyMapPage extends StatefulWidget {
  const MyMapPage({super.key});

  @override
  State<MyMapPage> createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  late GoogleMapController mapController;

  Map<String, Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return locationWidget();
  }

  Widget locationWidget() {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                const BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ENSTAB",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Technopole of Borj Cedria, Route of Soliman,\nBP 122 Hammam Chatt 1164, Ben Arous, Tunisia",
                  style: TextStyle(fontSize: 10),
                ),
                GestureDetector(
                  onTap: () {
                    launch(
                      "https://www.google.com/maps/search/?api=1&query=${currentLocation.latitude},${currentLocation.longitude}",
                    );
                  },
                  child: const Text(
                    "Show in Google Maps",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return Center(
        child: Stack(
          children: [
            SizedBox(
              height: context.screenHeight * 0.7,
              width: context.screenWidth * 0.7,
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: currentLocation,
                  zoom: 14,
                ),
                onMapCreated: (controller) {
                  mapController = controller;
                  addMarker('test', currentLocation);
                },
                markers: _markers.values.toSet(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ENSTAB",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Technopole of Borj Cedria, Route of Soliman,\nBP 122 Hammam Chatt 1164, Ben Arous, Tunisia",
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch(
                        "https://www.google.com/maps/search/?api=1&query=${currentLocation.latitude},${currentLocation.longitude}",
                      );
                    },
                    child: const Text(
                      "Show in Google Maps",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(
          size: Size(40, 40),
        ),
        'assets/university.png');
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: const InfoWindow(
          title: '''
National School of Advanced Science and \nTechnology of Borj Cédria - ENSTAB''',
          snippet: 'University',
        ),
        icon: markerIcon,
        onTap: () {});

    _markers[id] = marker;
    setState(() {});
  }
}
