import 'package:flutter/material.dart';

class RecomendedProduct extends StatefulWidget {
  const RecomendedProduct({Key? key}) : super(key: key);

  @override
  State<RecomendedProduct> createState() => _RecomendedProductState();
}

class _RecomendedProductState extends State<RecomendedProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55), // Set the height of the app bar
        child: AppBar(
          backgroundColor: const Color(0xFFF51347), // Set the background color
          elevation: 0, // Remove shadow
          automaticallyImplyLeading: false, // Hide back button
          leading: Container(
            width: 15,
            height: 15,
            margin: EdgeInsets.only(left: 12), // Adjust margin as needed
            child: Image.asset(
              'assets/recomented/back_img.png', // Adjust image path as needed
              width: 15, // Set image width
              height: 15, // Set image height
              fit: BoxFit.cover, // Adjust fit as needed
            ),
          ),
          title: Container(
            width: 320,
            height: 55,
            decoration: BoxDecoration(color: const Color(0xFFF51347)),
            child: Center(
              child: Text(
                'Our Recommended Product  ',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 13, // Text size
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(
                    'assets/recomented/lock_img.png', // Adjust image path as needed
                    width: 15, // Set image width
                    height: 15, // Set image height
                    fit: BoxFit.cover, // Adjust fit as needed
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(
                    'assets/recomented/ball_img.png', // Adjust image path as needed
                    width: 15, // Set image width
                    height: 15, // Set image height
                    fit: BoxFit.cover, // Adjust fit as needed
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(
                    'assets/recomented/search_img.png', // Adjust image path as needed
                    width: 15, // Set image width
                    height: 15, // Set image height
                    fit: BoxFit.cover, // Adjust fit as needed
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Your body content here
          Container(
            width: 400,
            height: 97,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align to the start (top) of the column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 8.0), // Adjust left and top padding as needed
                  child: Text(
                    'Select Category',
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 8,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        8), // Add some space between the text and the new container
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      // First container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/recomented/fish_logo.png', // Adjust path to your image
                                  width: 7, // Set image width
                                  height: 7, // Set image height
                                  fit: BoxFit.cover, // Adjust fit as needed
                                ),
                              ),
                            ),
                            SizedBox(width: 4), // Adjust spacing between inner and outer container
                            // Add more widgets here if needed
                          ],
                        ),
                      ),
                      // Second container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/recomented/fish_logo.png', // Adjust path to your image
                                  width: 7, // Set image width
                                  height: 7, // Set image height
                                  fit: BoxFit.cover, // Adjust fit as needed
                                ),
                              ),
                            ),
                            SizedBox(width: 4), // Adjust spacing between inner and outer container
                            // Add more widgets here if needed
                          ],
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/recomented/fish_logo.png', // Adjust path to your image
                                  width: 7, // Set image width
                                  height: 7, // Set image height
                                  fit: BoxFit.cover, // Adjust fit as needed
                                ),
                              ),
                            ),
                            SizedBox(width: 4), // Adjust spacing between inner and outer container
                            // Add more widgets here if needed
                          ],
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/recomented/fish_logo.png', // Adjust path to your image
                                  width: 7, // Set image width
                                  height: 7, // Set image height
                                  fit: BoxFit.cover, // Adjust fit as needed
                                ),
                              ),
                            ),
                            SizedBox(width: 4), // Adjust spacing between inner and outer container
                            // Add more widgets here if needed
                          ],
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/recomented/fish_logo.png', // Adjust path to your image
                                  width: 7, // Set image width
                                  height: 7, // Set image height
                                  fit: BoxFit.cover, // Adjust fit as needed
                                ),
                              ),
                            ),
                            SizedBox(width: 4), // Adjust spacing between inner and outer container
                            // Add more widgets here if needed
                          ],
                        ),
                      ),
                      // Repeat the above Container for additional containers
                      // You can copy and paste the above Container code here
                    ],
                  ),
                ),
                SizedBox(
                    height:
                        8), // Add some space between the previous row and the text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Select Product Type',
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 8,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    // Add more Text widgets here if needed
                  ],
                ),
                SizedBox(
                    height:
                        8), // Add some space between the text and the new row of containers
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      // First container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // Second container
                      // Repeat the above Container for additional containers
                      // You can copy and paste the above Container code here
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 400,
            height: 150,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align to the start (top) of the column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 8.0), // Adjust left and top padding as needed
                  child: Text(
                    'Select Category',
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 8,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        8), // Add some space between the text and the new container
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      // First container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // Second container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // Repeat the above Container for additional containers
                      // You can copy and paste the above Container code here
                    ],
                  ),
                ),
                SizedBox(height: 8), // Add some space between the previous row and the text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Select Product Type',
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 8,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    // Add more Text widgets here if needed
                  ],
                ),
                SizedBox(
                    height:
                        8), // Add some space between the text and the new row of containers
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      // First container
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8), // Add some space between the row and the next container
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 1',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3), // Add some space between the containers
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 2',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 2',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 1',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 400,
            height: 150,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .start, // Align to the start (top) of the column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 8.0), // Adjust left and top padding as needed
                  child: Text(
                    'Select Category',
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 8,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        8), // Add some space between the text and the new container
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      // First container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // Second container
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color:Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // Repeat the above Container for additional containers
                      // You can copy and paste the above Container code here
                    ],
                  ),
                ),
                SizedBox(height: 8), // Add some space between the previous row and the text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Select Product Type',
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 8,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    // Add more Text widgets here if needed
                  ],
                ),
                SizedBox(
                    height:
                        8), // Add some space between the text and the new row of containers
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      // First container
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // Second container
                      // Repeat the above Container for additional containers
                      // You can copy and paste the above Container code here
                    ],
                  ),
                ),
                SizedBox(
                    height:
                        8), // Add some space between the row and the next container
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 1',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3), // Add some space between the containers
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 2',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 2',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 20,
                        margin: EdgeInsets.only(
                            right: 8.0), // Adjust margin as needed
                        decoration: ShapeDecoration(
                          color: Colors.white, // Adjust color as needed
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 0.20, color: Color(0x7F2C3539)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Your Container Text 1',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color as needed
                              fontSize: 12, // Adjust text size as needed
                              fontWeight:
                                  FontWeight.bold, // Adjust font weight as needed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
