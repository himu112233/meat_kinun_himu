import 'package:flutter/material.dart';

class Challenge2_Screen extends StatefulWidget {
  const Challenge2_Screen({Key? key}) : super(key: key);

  @override
  State<Challenge2_Screen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<Challenge2_Screen> {
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
                      height: 506,
                      decoration: ShapeDecoration(
                        color: Colors.black,
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
                            InkWell(
                              onTap: () {
                                // Close the page when the button is tapped
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 320,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.05),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(64),
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons
                                        .keyboard_arrow_down, // Use the appropriate icon
                                    color: Colors
                                        .white, // Adjust the color as needed
                                    size: 24, // Adjust the size as needed
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 320,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25.0,left: 10),
                                child: Text(
                                  'Workout List',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Kanit',
                                    fontWeight: FontWeight.w500,
                                    height: 0.07,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 300,
                              height: 400,
                              child: ListView.builder(
                                itemCount: 9, // Replace itemCount with the actual number of items
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical:
                                            10), // Add vertical padding of 10
                                    child: Container(
                                      width: 320,
                                      height: 65,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF334155),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 222,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFF4343),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x3FFF4343),
                                                    blurRadius: 21,
                                                    offset: Offset(16, 0),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 16,
                                            top: 12,
                                            child: Container(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10.0),
                                                    child: Text(
                                                      '20x Jump rope',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily: 'Archivo',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0.09,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 25),
                                                  Text(
                                                    '01 : 45 min',
                                                    style: TextStyle(
                                                      color: Color(0xFFF1F5F9),
                                                      fontSize: 12,
                                                      fontFamily: 'Archivo',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0.12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 222.0),
                                            child: Positioned(
                                              left: 16,
                                              top: 12,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 22.0,left: 33),
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/missfit/play_button.png', // Replace 'assets/image.png' with the path to your asset image
                                                    fit: BoxFit.cover, // Adjust the fit as needed
                                                  ),
                                                ),
                                              )

                                            ),
                                          ),

                                        ],

                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
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
