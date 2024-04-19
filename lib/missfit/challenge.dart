import 'package:flutter/material.dart';

void main() {
  runApp(Challenge());
}

class Challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerPage(),
    );
  }
}

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 44), // Add some space here
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 54,
                height: 6,
                decoration: ShapeDecoration(
                  color: Color(0xFF22C55E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 54,
                height: 6,
                decoration: ShapeDecoration(
                  color: Color(0xFF22C55E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 54,
                height: 6,
                decoration: ShapeDecoration(
                  color: Color(0xFF22C55E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 54,
                height: 6,
                decoration: ShapeDecoration(
                  color: Color(0xFF22C55E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 54,
                height: 6,
                decoration: ShapeDecoration(
                  color: Color(0xFF22C55E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Adju
          Container(
            width: 320,
            height: 32,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 28,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform(
                        transform: Matrix4.identity()
                          ..translate(25.0, 30.0)
                          ..rotateZ(-3.14),
                        child: Container(
                          width: 28,
                          height: 28,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/missfit/cross_img.png', // Replace 'image_name.png' with your image asset path
                                width: 28,
                                height: 28,
                                fit: BoxFit
                                    .cover, // Adjust this based on your image size preference
                              ),
                              // You can add more widgets to the Stack if needed
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Calorie Torcher',
                        style: TextStyle(
                          color: Color(0xFFF8FAFC),
                          fontSize: 14,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Exercies 1/12',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFF8FAFC),
                        fontSize: 14,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      '05:23',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFF1F5F9),
                        fontSize: 12,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20), //
          Container(
            width: 360,
            height: 360,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 28,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform(
                        transform: Matrix4.identity()
                          ..translate(25.0, 30.0)
                          ..rotateZ(-3.14),
                        child: Container(
                          width: 28,
                          height: 28,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/missfit/cross_img.png', // Replace 'image_name.png' with your image asset path
                                width: 28,
                                height: 28,
                                fit: BoxFit
                                    .cover, // Adjust this based on your image size preference
                              ),
                              // You can add more widgets to the Stack if needed
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Calorie Torcher',
                        style: TextStyle(
                          color: Color(0xFFF8FAFC),
                          fontSize: 14,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Exercies 1/12',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFF8FAFC),
                        fontSize: 14,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      '05:23',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFF1F5F9),
                        fontSize: 12,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20), //
          Container(
            width: 320,
            height: 62,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 320,
                  child: Text(
                    'Jumping Jacks Abdominal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Archivo',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '02:23',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFA142),
                    fontSize: 24,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), //
          Container(
            width: 100,
            height: 60,
            color: Colors.blue,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/missfit/left_img.png', // Image path
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                        // Add your other Stack children here
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 40), // Spacer
                // Centered container
                Expanded(
                  child: Container(
                    height: 66,
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.center, // Center alignment
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 66,
                            height: 66,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.05),
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          top: 9,
                          child: Container(
                            width: 48,
                            height: 48,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 48,
                                    height: 48,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF4343),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Image.asset(
                                      'assets/missfit/push_img.png', // Replace 'assets/your_image.png' with the path to your image asset
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit
                                          .cover, // Adjust this based on your image size preference
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
                SizedBox(width: 40), // Spacer
                // Placeholder container on the right side
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/missfit/right_img.png', // Image path
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                        // Add your other Stack children here
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 140), //
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 44), // Add some space here
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Your existing Row with containers
                      ],
                    ),
                    // Other existing widgets
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 32,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(64),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

          // Other widgets can be added below the row
        ],
      ),
    );
  }
}
