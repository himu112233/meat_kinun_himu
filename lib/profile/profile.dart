import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future getImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.photo_library),
                        title: Text('Choose from Gallery'),
                        onTap: () {
                          getImageFromGallery();
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.camera_alt),
                        title: Text('Take a Photo'),
                        onTap: () {
                          getImageFromCamera();
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: ShapeDecoration(
                color: Color(0x193A3B3C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                      child: Image.asset(
                    "assets/profile/img_profile.png",
                    width: 70,
                    height: 70,
                  )),
                  Image.asset(
                    "assets/profile/icon_edit.png",
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
          ),
          Text(
            'MD. Sazzadul Alam Sajib',
            style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          Text(
            'Chamurkhan, Dhaka - North, Dhaka',
            style: TextStyle(
              color: Color(0xFF1EA41E),
              fontSize: 10,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
          categoryItem("assets/profile/img_order.png", "My Order"),
          categoryItem("assets/profile/img_order.png", "My Order"),
          categoryItem("assets/profile/img_order.png", "My Order"),
          categoryItem("assets/profile/img_order.png", "My Order"),
          categoryItem("assets/profile/img_order.png", "My Order"),
          categoryItem("assets/profile/img_order.png", "My Order"),
          categoryItem("assets/profile/img_order.png", "My Order")
        ],
      ),
    );
  }

  Widget categoryItem(String imagePath, String title) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 310,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(imagePath),
                  // Image.asset("assets/profile/img_order.png"),

                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
              Image.asset("assets/profile/img_play_button.png")
            ],
          ),
        ),
      ),
    );
  }
}
