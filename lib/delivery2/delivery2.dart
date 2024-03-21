import 'package:flutter/material.dart';

class Delivery2 extends StatefulWidget {
  const Delivery2({Key? key}) : super(key: key);

  @override
  State<Delivery2> createState() => _Delivery2State();
}

class _Delivery2State extends State<Delivery2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF51347), // Set appbar background color
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 15,
              height: 15,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/delivery/logo_img.png', // Replace 'assets/left_image.png' with your actual image path
                    width: 15,
                    height: 15,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Text(
              'Select Delivery Address', // Your title text
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 20, // Text size
              ),
            ),
            Container(
              width: 36,
              height: 15,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: 23,
                  height: 9,
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: Color(0xFFF51347),
                      fontSize: 8,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10), // Add spacing before the container
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Container(
              width: 400,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/delivery/logo_img.png', // Replace 'assets/your_image.png' with your actual image path
                                width: 15,
                                height: 15,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8), // Add spacing between container and text
                        Text(
                          'Autofill using my current Location',
                          style: TextStyle(
                            color: Color(0xFFF51347),
                            fontSize: 8,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                              child: Text(
                                'Area',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'Select the Region, City, Area',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Text(
                                'Address',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'House no. / Building / Street / Area',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 110,
                              child: Text(
                                'Landmark(optional)',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'E.g. Beside Train Station',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add spacing before the container
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Container(
              width: 400,
              height: 145,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    SizedBox(height: 12), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 51,
                              child: Text(
                                'Full Name',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'Select the Region, City, Area',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                              child: Text(
                                'Mobile Number',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'E.g. +8801984737346',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'E.g. heroalam@gmail.com',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 110,
                              child: Text(
                                  'WhatsApp',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 5), // Adjust horizontal spacing between texts
                            Expanded(
                              child: TextFormField(
                                initialValue: 'E.g. +8801984737346',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0x7F555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add spacing before the container
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Container(
              width: 400,
              height: 95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    SizedBox(height: 12), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Added to align the containers to the right
                          children: [
                            SizedBox(
                              width: 121,
                              child: Text(
                                'Address Label(Optional)',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            SizedBox(width: 110), // Adjust horizontal spacing between texts
                            Container(
                              width: 30,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 0.30, color: Color(0xFF1EA41E)),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned.fill(
                                    child: Center(
                                      child: Text(
                                        'Home',
                                        style: TextStyle(
                                          color: Color(0xFF1EA41E),
                                          fontSize: 8,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 34,
                              height: 15,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 0.30, color: Color(0xFF1EA41E)),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned.fill(
                                    child: Center(
                                      child: Text(
                                        'Default',
                                        style: TextStyle(
                                          color: Color(0xFF1EA41E),
                                          fontSize: 8,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // Add spacing before the additional container
                    Container(
                      width: 390,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 0.20, color: Color(0x7F555555)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Added to align the image to the right
                          children: [
                            SizedBox(
                              width: 121,
                              child: Text(
                                'Default delivery address',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 16,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 30,
                                      height: 16,
                                      decoration: ShapeDecoration(
                                        color: Color(0x7F555555),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 1,
                                    top: 1,
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 6,
                                    top: 6,
                                    child: Container(
                                      width: 4,
                                      height: 4,
                                      decoration: ShapeDecoration(
                                        color: Color(0x7F555555),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
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
                    ),

                  ],
                ),
              ),
            ),
          ),

          //button//
          SizedBox(height: 380), // Add spacing before the container
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: GestureDetector(
              onTap: () {
                // Add your onTap functionality here
              },
              child: Container(
                width: 380,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFFF51347),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
