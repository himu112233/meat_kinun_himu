import 'package:flutter/material.dart';



class SelectService extends StatelessWidget {
  // Define a list of data for images and names
  List<Map<String, dynamic>> itemList = [
    {
      'image': "assets/missfit/girl1_img.png",
      'name': 'Sarah Glayre',
    },
    {
      'image': "assets/missfit/girl2_img.png",
      'name': 'John Doe',
    },
    {
      'image': "assets/missfit/girl2_img.png",
      'name': 'John Doe',
    },
    {
      'image': "assets/missfit/girl2_img.png",
      'name': 'John Doe',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(97),
          child: AppBar(
            toolbarHeight: 97, // Adjust the height of the app bar
            backgroundColor: Colors.red, // App bar color
            leading: IconButton( // Back arrow icon
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Handle back button press here
                // Typically you would use Navigator.pop(context) to navigate back
              },
            ),
            titleSpacing: 10, // Adjust the spacing between the icon and title
            title: Padding(
              padding: const EdgeInsets.only(top: 12.0), // Adjust top padding of title
              child: Text(
                'Select Your Coach',
                style: TextStyle(color: Colors.black), // Text color
              ),
            ),
            centerTitle: true, // Center align title
          ),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Adjust the number of columns as needed
            crossAxisSpacing: 1, // Adjust the spacing between columns
            mainAxisSpacing: 15, // Adjust the spacing between rows
          ),
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              height: 180,
              margin: EdgeInsets.symmetric(horizontal: 10),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(itemList[index]['image']),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Text(
                        itemList[index]['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
