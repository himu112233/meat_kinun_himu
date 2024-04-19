import 'package:flutter/material.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({Key? key}) : super(key: key);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black87, Colors.white], // Black to white gradient
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {
                // Show bottom navigation sheet here
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      width: 420,
                      height: 510,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Text(
                              'Why give up?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1E293B),
                                fontSize: 24,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'This will help us know you better and provide the workout that is more suitable for you.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1E293B),
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 312,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFE5E7EB)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: Container(
                                width: 312,
                                height: 48,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFFE5E7EB)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0.49,
                                        top: 1.37,
                                        child: Container(
                                          width: 23.02,
                                          height: 21.27,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 12.12,
                                                child: Container(
                                                  width: 23.02,
                                                  height: 6.90,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 13.86,
                                                        top: 0,
                                                        child: Container(
                                                          width: 9.15,
                                                          height: 6.90,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 9.15,
                                                          height: 6.90,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 7.34,
                                                top: 6.13,
                                                child: Container(
                                                  width: 8.34,
                                                  height: 15.14,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -0,
                                                        top: 4.72,
                                                        child: Container(
                                                          width: 8.34,
                                                          height: 10.41,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 1.71,
                                                        top: 0,
                                                        child: Container(
                                                          width: 5.54,
                                                          height: 9.11,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
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
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 08,
                                        child: Image.asset(
                                          'assets/missfit/girl_logo.png', // Replace 'assets/missfit/girl_logo.png' with your actual image path
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        left:
                                            48, // Adjust the left position to align with the image
                                        top:
                                            20, // Adjust the top position to align with the image
                                        child: SizedBox(
                                          width: 185,
                                          child: Text(
                                            'Don’t know how to do it',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.09,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 312,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFE5E7EB)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: Container(
                                width: 312,
                                height: 48,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFFE5E7EB)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0.49,
                                        top: 1.37,
                                        child: Container(
                                          width: 23.02,
                                          height: 21.27,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 12.12,
                                                child: Container(
                                                  width: 23.02,
                                                  height: 6.90,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 13.86,
                                                        top: 0,
                                                        child: Container(
                                                          width: 9.15,
                                                          height: 6.90,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 9.15,
                                                          height: 6.90,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 7.34,
                                                top: 6.13,
                                                child: Container(
                                                  width: 8.34,
                                                  height: 15.14,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -0,
                                                        top: 4.72,
                                                        child: Container(
                                                          width: 8.34,
                                                          height: 10.41,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 1.71,
                                                        top: 0,
                                                        child: Container(
                                                          width: 5.54,
                                                          height: 9.11,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
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
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 08,
                                        child: Image.asset(
                                          'assets/missfit/girl2_logo.png', // Replace 'assets/missfit/girl_logo.png' with your actual image path
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        left:
                                            48, // Adjust the left position to align with the image
                                        top:
                                            20, // Adjust the top position to align with the image
                                        child: SizedBox(
                                          width: 185,
                                          child: Text(
                                            'Don’t know how to do it',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.09,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 312,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFE5E7EB)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: Container(
                                width: 312,
                                height: 48,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFFE5E7EB)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0.49,
                                        top: 1.37,
                                        child: Container(
                                          width: 23.02,
                                          height: 21.27,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 12.12,
                                                child: Container(
                                                  width: 23.02,
                                                  height: 6.90,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 13.86,
                                                        top: 0,
                                                        child: Container(
                                                          width: 9.15,
                                                          height: 6.90,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 9.15,
                                                          height: 6.90,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 7.34,
                                                top: 6.13,
                                                child: Container(
                                                  width: 8.34,
                                                  height: 15.14,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -0,
                                                        top: 4.72,
                                                        child: Container(
                                                          width: 8.34,
                                                          height: 10.41,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 1.71,
                                                        top: 0,
                                                        child: Container(
                                                          width: 5.54,
                                                          height: 9.11,
                                                          child: Stack(
                                                            children: [
                                                              // Nested Stack children here
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
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 08,
                                        child: Image.asset(
                                          'assets/missfit/rose_flower.png', // Replace 'assets/missfit/girl_logo.png' with your actual image path
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        left:
                                            48, // Adjust the left position to align with the image
                                        top:
                                            20, // Adjust the top position to align with the image
                                        child: SizedBox(
                                          width: 185,
                                          child: Text(
                                            'Don’t know how to do it',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w400,
                                              height: 0.09,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            InkWell(
                              onTap: () {
                                // Close the page when the button is tapped
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 312,
                                height: 52,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1, color: Colors.red),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'I Want To Quit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w400,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
