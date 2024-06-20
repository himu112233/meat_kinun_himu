import 'package:flutter/material.dart';

class Take_a_challenge2 extends StatelessWidget {
  const Take_a_challenge2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(

              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/missfit/img_8.png',
                width: 515,
                height: 444,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 400), // Adjust top margin to fit the image height
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), // Adjust the radius as needed
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 30),
                      child: Text(
                        'Calorie Torcher',
                        style: TextStyle(
                          color: Color(0xFF334155),
                          fontSize: 24,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                        ),
                      ),
                    ),
                    SizedBox(
                        height:
                            45), // Add some spacing between text and containers
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          Container(
                            width: 59,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color(
                                  0xFFE5E7EB), // Add the desired color here
                              borderRadius: BorderRadius.circular(
                                  5), // Add border radius if needed
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
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                      'assets/missfit/logo2_img.png'), // Replace 'assets/missfit/logo2_img.png' with your image path
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '30 min',
                                  style: TextStyle(
                                    color: Color(0xFF334155),
                                    fontSize: 12,
                                    fontFamily: 'Archivo',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10), // Add spacing between containers
                          Container(
                            width: 95,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color(
                                  0xFFE5E7EB), // Add the desired color here
                              borderRadius: BorderRadius.circular(
                                  5), // Add border radius if needed
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
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                      'assets/missfit/logo1_img.png'), // Replace 'assets/missfit/logo1_img.png' with your image path
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Intermediate',
                                  style: TextStyle(
                                    color: Color(0xFF334155),
                                    fontSize: 12,
                                    fontFamily: 'Archivo',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10), // Add spacing between containers
                          Container(
                            width: 62,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color(
                                  0xFFE5E7EB), // Add the desired color here
                              borderRadius: BorderRadius.circular(
                                  5), // Add border radius if needed
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
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                      'assets/missfit/logo3_img.png'), // Replace 'assets/missfit/logo3_img.png' with your image path
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '247 cal',
                                  style: TextStyle(
                                    color: Color(0xFF334155),
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
                    SizedBox(
                        height:
                            35), // Add some spacing between text and containers
                    Text(
                      'Overview',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 320,
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Vitae mauris pretium neque volutpat. Gravida in sed nulla lectus. Risus et mauris eget sed cum dui quam mattis porta. In eget molestie eu ut.',
                        style: TextStyle(
                          color: Color(0xFF334155),
                          fontSize: 14,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                    SizedBox(
                        height:
                            35), // Add some spacing between text and containers
                    Text(
                      'Exercises',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4, // Number of items in the list
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 12),
                            width: 320,
                            height: 80,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF6B7280),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
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
                                                color: Color(0xFF334155),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                                height: 0.09,
                                              ),
                                            ),
                                            const SizedBox(height: 33),
                                            Text(
                                              '00:20',
                                              style: TextStyle(
                                                color: Color(0xFF66758C),
                                                fontSize: 16,
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.w500,
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  width: 365,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFFE5E7EB),
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
                    SizedBox(
                        height:
                            35), // Add some spacing between text and containers
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Equipment Needed',
                          style: TextStyle(
                            color: Color(0xFF334155),
                            fontSize: 16,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        Text(
                          '5 Items',
                          style: TextStyle(
                            color: Color(0xFF94A3B8),
                            fontSize: 12,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 392,
                      height: 172,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE5E7EB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/missfit/red_girl.png"), // Change this to the appropriate asset image
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    index == 1
                                        ? 'Anti-Burst Balance Ball'
                                        : 'Dumbbells',
                                    style: TextStyle(
                                      color: Color(0xFF334155),
                                      fontSize: 14,
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w400,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                        height:
                            35), // Add some spacing between text and containers
                    Text(
                      'Exercises',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                      width: 320,
                      height: 172,
                      child: Wrap(
                        spacing: 12.0, // space between items horizontally
                        runSpacing: 12.0, // space between items vertically
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5E7EB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(
                              'Bodyweight',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 12,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height:
                                    1.2, // Adjusted to a more reasonable value
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5E7EB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(
                              'Lower Body-Focused',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 12,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height:
                                    1.2, // Adjusted to a more reasonable value
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5E7EB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(
                              'Muscle & Strength',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 12,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height:
                                    1.2, // Adjusted to a more reasonable value
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5E7EB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(
                              'Low to High Intensity',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 12,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height:
                                    1.2, // Adjusted to a more reasonable value
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5E7EB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Text(
                              'Bodyweight',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 12,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height:
                                    1.2, // Adjusted to a more reasonable value
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 320,
                      height: 128,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expected Result',
                            style: TextStyle(
                              color: Color(0xFF334155),
                              fontSize: 16,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w500,
                              height: 0.09,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 320,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Image.asset('assets/missfit/green_img.png'),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            'Stronger and explosive lower body',
                                            style: TextStyle(
                                              color: Color(0xFF475569),
                                              fontSize: 14,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w500,
                                              height: 0.10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  width: 320,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Image.asset('assets/missfit/green_img.png'),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            'Better body Balance',
                                            style: TextStyle(
                                              color: Color(0xFF475569),
                                              fontSize: 14,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w500,
                                              height: 0.10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  width: 320,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Image.asset('assets/missfit/green_img.png'),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            'Athlete-like physique',
                                            style: TextStyle(
                                              color: Color(0xFF475569),
                                              fontSize: 14,
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.w500,
                                              height: 0.10,
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
                    ),
                    SizedBox(height: 3),
                    Container(
                      width: 320,
                      height: 128,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Guidelines',
                            style: TextStyle(
                              color: Color(0xFF334155),
                              fontSize: 16,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w500,
                              height: 0.09,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 365,
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur. Vitae mauris pretium neque volutpat. Gravida in sed nulla lectus. Dictumst enim ullorper ida libero maecenas lobortis vitae. Risus et mauris eget sed cum dui quam mattis porta.',
                              style: TextStyle(
                                color: Color(0xFF334155),
                                fontSize: 14,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 78, bottom: 25), // Added bottom padding
                      child: Container(
                        width: 370,
                        height: 52,
                        padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 17),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFF4343),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
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
          ],
        ),
      ),
    );
  }
}