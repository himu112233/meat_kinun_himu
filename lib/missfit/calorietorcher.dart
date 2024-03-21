import 'package:flutter/material.dart';

void main() {
  runApp(CalorieApp());
}

class CalorieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:
            Colors.red[600], // Set the background color of the scaffold to red
        body: YourWidget(),
      ),
    );
  }
}

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 423,
                height: 380,
                decoration: BoxDecoration(
                  color: Colors.red, // Set the color to red
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/missfit/banner_img.png"), // Replace "your_image.png" with your asset image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 22,
                child: Container(
                  width: 32,
                  height: 32,
                  padding: const EdgeInsets.all(6),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.asset(
                    "assets/missfit/logo_img.png", // Replace "your_image.png" with your asset image path
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                right: 22,
                child: Container(
                  width: 32,
                  height: 32,
                  padding: const EdgeInsets.all(6),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.asset(
                    "assets/missfit/love_img.png", // Replace "your_image.png" with your asset image path
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 11, // Positioning it at the top of the screen
            left: 0, // Positioning it at the left side of the screen
            child: Container(
              width: 450,
              height: 1518,
              decoration: BoxDecoration(
                color: Colors.black, // Adjust color as needed
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      35), // You can adjust the radius as needed
                  bottomLeft: Radius.circular(
                      35), // You can adjust the radius as needed
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      'Calorie Torcher',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w600,
                        height: 0.06,
                      ),
                    ),
                  ),
                  SizedBox(height: 33),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 77,
                          height: 30,
                          padding: const EdgeInsets.only(
                              top: 6, left: 8, right: 10, bottom: 6),
                          decoration: BoxDecoration(
                            color: Color(0xFF334155),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Set color as needed or remove this line if you want transparent background
                                  borderRadius: BorderRadius.circular(
                                      8), // Set borderRadius to make it a circle
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons
                                        .access_time, // Use the appropriate icon for clock
                                    size: 12, // Adjust size as needed
                                    color: Colors.black, // Set color as needed
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      4), // Adjust spacing between image and text as needed
                              Text(
                                '25 min',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 109,
                          height: 30,
                          padding: const EdgeInsets.only(
                              top: 6, left: 8, right: 10, bottom: 6),
                          decoration: BoxDecoration(
                            color: Color(0xFF334155),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      8), // Set borderRadius to make it a circle
                                ),
                                child: Image.asset(
                                  'assets/missfit/scal_img.png', // Replace 'assets/missfit/scal_img.png' with your actual image asset path
                                  width: 16,
                                  height: 16,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      4), // Adjust spacing between image and text as needed
                              Text(
                                'Intermediate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 79,
                          height: 30,
                          padding: const EdgeInsets.only(
                              top: 6, left: 8, right: 10, bottom: 6),
                          decoration: BoxDecoration(
                            color: Color(0xFF334155),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      8), // Set borderRadius to make it a circle
                                ),
                                child: Image.asset(
                                  'assets/missfit/fire_img.png', // Replace 'your_image.png' with your actual image asset path
                                  width: 16,
                                  height: 16,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      4), // Adjust spacing between image and text as needed
                              Text(
                                '247 cal',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 320,
                      height: 200, // Adjust the height as needed
                      color: Colors.black, // Add your desired color here
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'Overview',
                              style: TextStyle(
                                color: Colors
                                    .white, // Change color to white if needed
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  20), // Add spacing between the "Overview" text and the new container
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 300,
                              height: 145,
                              color: Colors.black, // Adjust color as needed
                              child: SizedBox(
                                  width: 300,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet consectetur. Vitae mauris pretium neque volutpat. Gravida in sed nulla lectus. Risus et mauris eget sed cum dui quam mattis porta. In eget molestie eu ut.',
                                    style: TextStyle(
                                      color: Color(0xFFF1F5F9),
                                      fontSize: 16,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 320,
                      height: 465, // Adjust the height as needed
                      color: Colors.black, // Add your desired color here
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'Exercises',
                              style: TextStyle(
                                color: Colors
                                    .white, // Change color to white if needed
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  20), //// Add spacing between the "Exercises" text and the new container

                          ////list container ///
                          Container(
                            width: 320,
                            height: 92,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 72,
                                        height: 72,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF6B7280),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                      const SizedBox(width: 24),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Jumping Jack',
                                              style: TextStyle(
                                                color: Color(0xFFF8FAFC),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              '00:20',
                                              style: TextStyle(
                                                color: Color(0xFF475569),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                                height: 0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF363434),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 320,
                            height: 92,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 72,
                                        height: 72,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF6B7280),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                      const SizedBox(width: 24),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Jumping Jack',
                                              style: TextStyle(
                                                color: Color(0xFFF8FAFC),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              '00:20',
                                              style: TextStyle(
                                                color: Color(0xFF475569),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                                height: 0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF363434),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 320,
                            height: 92,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 72,
                                        height: 72,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF6B7280),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                      const SizedBox(width: 24),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Jumping Jack',
                                              style: TextStyle(
                                                color: Color(0xFFF8FAFC),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              '00:20',
                                              style: TextStyle(
                                                color: Color(0xFF475569),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                                height: 0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF363434),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 320,
                            height: 92,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 72,
                                        height: 72,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF6B7280),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                      const SizedBox(width: 24),
                                      Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Jumping Jack',
                                              style: TextStyle(
                                                color: Color(0xFFF8FAFC),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              '00:20',
                                              style: TextStyle(
                                                color: Color(0xFF475569),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                                height: 0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF363434),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 135.0),
                            child: Container(
                              width: 93,
                              height: 33,
                              padding: const EdgeInsets.only(
                                  top: 6, left: 12, right: 6, bottom: 6),
                              decoration: ShapeDecoration(
                                color: Color(0xFF252323),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'View All',
                                          style: TextStyle(
                                            color: Color(0xFFFF4343),
                                            fontSize: 14,
                                            fontFamily: 'Archivo',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(width: 2),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            children: [
                                              // Add your Stack children here
                                            ],
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
                  SizedBox(height: 33),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 392,
                      height: 644,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Equipment Needed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Archivo',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                  ),
                                ),
                                const SizedBox(width: 140),
                                Text(
                                  '5 Items',
                                  style: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 12,
                                    fontFamily: 'Archivo',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF363434),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 130,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/missfit/item_img.png"), // Replace "assets/image_name.png" with your actual asset image path
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: 120,
                                        child: Text(
                                          'Dumbbells',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Archivo',
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF363434),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 130,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/missfit/item_img.png"), // Replace "assets/image_name.png" with your actual asset image path
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: 120,
                                        child: Text(
                                          'Dumbbells',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Archivo',
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF363434),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 130,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/missfit/item_img.png"), // Replace "assets/image_name.png" with your actual asset image path
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: 120,
                                        child: Text(
                                          'Dumbbells',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Archivo',
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 55),
                          Container(
                            width: double.infinity, // Adjust width as needed
                            height: 24, // Adjust height as needed
                            child: Text(
                              'Focus Area',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 30,
                                      padding: const EdgeInsets.only(top: 6, left: 8, right: 10, bottom: 6),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF334155),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Bodyweight',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 121,
                                      height: 30,
                                      padding: const EdgeInsets.only(top: 6, left: 8, right: 10, bottom: 6),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF334155),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Muscle & Strength',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 121,
                                      height: 30,
                                      padding: const EdgeInsets.only(top: 6, left: 8, right: 10, bottom: 6),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF334155),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Muscle & Strength',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10), // Adding space between the rows
                                Row(
                                  children: [
                                    // Add two more containers here as needed
                                    Container(
                                      width: 136,
                                      height: 30,
                                      padding: const EdgeInsets.only(top: 6, left: 8, right: 10, bottom: 6),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF334155),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Lower Body-Focused',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 137,
                                      height: 30,
                                      padding: const EdgeInsets.only(top: 6, left: 8, right: 10, bottom: 6),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF334155),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Low to High Intensity',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        //  add 3 image//
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // Your existing containers...
                                  ],
                                ),
                                SizedBox(height: 10), // Adding space between the rows
                                Row(
                                  children: [
                                    // Your existing containers...
                                  ],
                                ),
                                SizedBox(height: 10), // Adding space between the rows
                                Container(
                                  width: 320,
                                  height: 90,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Expected Result',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Archivo',
                                          fontWeight: FontWeight.w500,
                                          height: 0.09,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          // First line of text
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              // Your icon container...
                                              SizedBox(width: 12),
                                              Expanded(
                                                child: SizedBox(
                                                  child: Text(
                                                    'Stronger and explosive lower body',
                                                    style: TextStyle(
                                                      color: Color(0xFFF1F5F9),
                                                      fontSize: 14,
                                                      fontFamily: 'Archivo',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0.11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          // Second line of text
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              // Your icon container...
                                              SizedBox(width: 12),
                                              SizedBox(height: 10,),
                                              Expanded(
                                                child: SizedBox(
                                                  child: Text(
                                                    'Better body Balance',
                                                    style: TextStyle(
                                                      color: Color(0xFFF1F5F9),
                                                      fontSize: 14,
                                                      fontFamily: 'Archivo',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0.11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          // Third line of text
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              // Your icon container...
                                              SizedBox(width: 12),
                                              Expanded(
                                                child: SizedBox(
                                                  child: Text(
                                                    'Athlete-like physique',
                                                    style: TextStyle(
                                                      color: Color(0xFFF1F5F9),
                                                      fontSize: 14,
                                                      fontFamily: 'Archivo',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0.11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 320,
                            height: 190, // Adjust the height as needed
                            color: Colors.black, // Add your desired color here
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 20),
                                  child: Text(
                                    'Guidelines',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Change color to white if needed
                                      fontSize: 16,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w500,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height:
                                    20), // Add spacing between the "Overview" text and the new container
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    width: 300,
                                    height: 145,
                                    color: Colors.black, // Adjust color as needed
                                    child: SizedBox(
                                        width: 300,
                                        child: Text(
                                          'Lorem ipsum dolor sit amet consectetur. Vitae mauris pretium neque volutpat. Gravida in sed nulla lectus. Dictumst enim ullorper ida libero maecenas lobortis vitae. Risus et mauris eget sed cum dui quam mattis porta.',
                                          style: TextStyle(
                                            color: Color(0xFFF1F5F9),
                                            fontSize: 16,
                                            fontFamily: 'Archivo',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
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
        ],
      ),
    );
  }
}
