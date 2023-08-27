import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

Widget qrWidgetForLabs(String data, String text) {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: context.screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Align(
                alignment: Alignment.center,
                child: QrImageView(
                  backgroundColor: Colors.blue,
                  data: data,
                  version: QrVersions.auto,
                  size: context.screenWidth * 0.29,
                  gapless: true,
                  dataModuleStyle: const QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.circle,
                    color: Colors.black,
                  ),
                  eyeStyle: const QrEyeStyle(
                    eyeShape: QrEyeShape.square,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        );
      }
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: context.screenWidth * 0.01,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes the shadow position
                      ),
                    ],
                  ),
                  child: QrImageView(
                    backgroundColor: Colors.white,
                    data: data,
                    version: QrVersions.auto,
                    size: context.screenWidth * 0.15,
                    gapless: true,
                    dataModuleStyle: const QrDataModuleStyle(
                      dataModuleShape: QrDataModuleShape.circle,
                      color: Colors.black,
                    ),
                    eyeStyle: const QrEyeStyle(
                      eyeShape: QrEyeShape.square,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
