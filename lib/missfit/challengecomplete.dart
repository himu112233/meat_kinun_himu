import 'package:flutter/material.dart';

class ChallengeComplete extends StatefulWidget {
  const ChallengeComplete({Key? key}) : super(key: key);

  @override
  State<ChallengeComplete> createState() => _ChallengeCompleteState();
}

class _ChallengeCompleteState extends State<ChallengeComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250.0),
          child: Container(
            width: 304,
            height: 800,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1,
                        top: 0,
                        child: Opacity(
                          opacity: 0.60,
                          child: Container(
                            width: 99,
                            height: 99,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0.47,
                                  top: -0,
                                  child: Container(
                                    width: 98.96,
                                    height: 99,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0.53,
                                          top: 36.96,
                                          child: Container(
                                            width: 98.43,
                                            height: 45.16,
                                            child: Stack(
                                              children: [
                                                // Add your Stack children here
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 1.53,
                                          top: 3,
                                          child: Container(
                                            width: 95.84,
                                            height: 96,
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                  'assets/missfit/img_1.png', // Replace 'assets/your_image.png' with the path to your first image asset
                                                  width: 95.84,
                                                  height: 96,
                                                  fit: BoxFit.cover, // Adjust this based on your image size preference
                                                ),
                                                Image.asset(
                                                  'assets/missfit/img_4.png', // Add the path to your second image asset
                                                  width: 95.84,
                                                  height: 96,
                                                  fit: BoxFit.cover, // Adjust this based on your image size preference
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 20.0,left: 20),
                                                  child: Image.asset(
                                                    'assets/missfit/fingure_img.png', // Add the path to your second image asset
                                                    width: 50,
                                                    height: 50,
                                                    fit: BoxFit.cover, // Adjust this based on your image size preference
                                                  ),
                                                ),
                                                // Add your other Stack children here
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
                      ),
                      Positioned(
                        left: 17.97,
                        top: 16.33,
                        child: Container(
                          width: 64.06,
                          height: 61.09,
                          child: Stack(
                            children: [
                              // Add your Stack children here
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Well Done!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'You have completed your challenge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 144,
                        height: 134,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 144,
                                height: 134,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.20, color: Color(0xFF4B5563)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 16,
                              child: Container(
                                width: 69,
                                height: 102,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 3.33,
                                            top: -0,
                                            child: Container(
                                              width: 33.33,
                                              height: 40.02,
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    'assets/missfit/img_3.png', // Replace 'assets/your_image.png' with the path to your image asset
                                                    width: 33.33,
                                                    height: 40.02,
                                                    fit: BoxFit.cover, // Adjust this based on your image size preference
                                                  ),
                                                  // Add your other Stack children here
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    const Text(
                                      'Total time',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Archivo',
                                        fontWeight: FontWeight.w400,
                                        height: 0.09,
                                      ),
                                    ),
                                    const SizedBox(height: 20), // Add spacing between the two texts
                                    Text(
                                      '200',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFA142),
                                        fontSize: 20,
                                        fontFamily: 'Archivo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.07,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        width: 144,
                        height: 134,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 144,
                                height: 134,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.20, color: Color(0xFF4B5563)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 16,
                              child: Container(
                                width: 69,
                                height: 102,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 3.33,
                                            top: -0,
                                            child: Container(
                                              width: 33.33,
                                              height: 40.02,
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    'assets/missfit/img_2.png', // Replace 'assets/your_image.png' with the path to your image asset
                                                    width: 33.33,
                                                    height: 40.02,
                                                    fit: BoxFit.cover, // Adjust this based on your image size preference
                                                  ),
                                                  // Add your other Stack children here
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'Total cost',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Archivo',
                                        fontWeight: FontWeight.w400,
                                        height: 0.09,
                                      ),
                                    ),
                                    const SizedBox(height: 20), // Add spacing between the two texts
                                    Text(
                                      '200',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFA142),
                                        fontSize: 20,
                                        fontFamily: 'Archivo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.07,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                GestureDetector(
                  onTap: () {
                    // Navigate to the congratulation page when the button is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CongratulationPage()),
                    );
                  },
                  child: Container(
                    width: 320,
                    height: 52,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4343),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CongratulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage('assets/missfit/right_img.png'), // Replace 'assets/your_image.png' with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage('assets/missfit/right_img.png'), // Replace 'assets/your_image.png' with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                        'Congratulations !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF334155),
                          fontSize: 24,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      child: Text(
                        'You have successfully registered',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF334155),
                          fontSize: 16,
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
            ],
          ),
        ),

      ),
    );
  }
}