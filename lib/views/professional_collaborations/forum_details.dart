import 'package:enstab_wbr_helix/models/Professional_collaborations/forum_model.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/image_grid_guests_info_view_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/images_grid_view_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/row_parterns_Logo_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/voluntary_widgets.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

class ForumView extends StatelessWidget {
  final Forum forum;

  const ForumView({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.blue,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetImageFromFirebase(imagePath: forum.image),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    forum.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Theme",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      forum.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ImageGridView(imagesFuture: forum.images),
              SizedBox(height: 20),
              forum.name == 'Forum 4'
                  ? dividerWidget('FORUM 4 GUESTS')
                  : dividerWidget('FORUM 5 GUESTS'),
              ImageGridView(
                imagesFuture: forum.imagesOfGuests,
              ),
              dividerWidget('HONORED GUESTS'),
              ImageGridGuestsInfoView(
                guestInfoFuture: forum.guests,
              ),
              const SizedBox(height: 20),
              dividerWidget('ENSTAB PARTNERS'),
              rowParternsLogo(forum),
              const SizedBox(height: 20),
              ImageGridView(imagesFuture: forum.imagesEntreprises),
            ],
          ).p16(),
        ),
      ),
    );
  }
}

class GetImageFromFirebase extends StatefulWidget {
  String? imagePath;

  GetImageFromFirebase({super.key, required this.imagePath});
  @override
  _GetImageFromFirebaseState createState() => _GetImageFromFirebaseState();
}

class _GetImageFromFirebaseState extends State<GetImageFromFirebase> {
  // Change this to the actual path

  String? imageUrl;
  @override
  void initState() {
    super.initState();
    fetchImage();
  }

  void fetchImage() async {
    try {
      final ref = FirebaseStorage.instance.ref(widget.imagePath);
      imageUrl = await ref.getDownloadURL();
      setState(() {}); // Trigger a rebuild to display the fetched image
    } catch (e) {
      print('Error fetching image: $e');
    }
  }

  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: imageUrl != null
          ? Image.network(
              imageUrl!,
              fit: BoxFit.cover,
            )
          : Shimmer.fromColors(
              baseColor: Colors.grey[300]!, // Customize the shimmer base color
              highlightColor:
                  Colors.grey[100]!, // Customize the shimmer highlight color
              child: Container(
                color: Colors
                    .white, // You can change this to match your background color
              ),
            ), // Display a loading indicator if image not fetched yet
    );
  }
}
