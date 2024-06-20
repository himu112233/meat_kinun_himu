import 'package:flutter/material.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key}) : super(key: key);

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
                'assets/missfit/girl_new_img.png',
                width: 515,
                height: 348,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 310), // Adjust top margin to fit the image height
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), // Adjust the radius as needed
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      'Bilan',
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 59,
                          height: 18,
                          decoration: BoxDecoration(
                            color:
                                Color(0xFFE5E7EB), // Add the desired color here
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
                            color:
                                Color(0xFFE5E7EB), // Add the desired color here
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
                            color:
                                Color(0xFFE5E7EB), // Add the desired color here
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
                      'The assessment with our coach represents a crucial step in your fitness journey. During this in-depth session, we perform a detailed fitness assessment, including taking anthropometric measurements, an assessment of your current fitness level, and an in-depth discussion of your medical history and personal goals. Then, in collaboration with you, we establish a tailor-made action plan, identifying areas for improvement, defining realistic objectives and choosing the types of training best suited to your profile. By investing in this assessment, you benefit from a personalized program that maximizes your chances of success and lasting progress.',
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
            'We will do',
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
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                            'assets/missfit/green_img.png'), // Replace 'assets/your_image1.png' with your image asset path
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Detailed fitness assessment',
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
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                            'assets/missfit/green_img.png'), // Replace 'assets/your_image2.png' with your image asset path
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Anthropometric measurements',
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
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                            'assets/missfit/green_img.png'), // Replace 'assets/your_image3.png' with your image asset path
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Assessment of current fitness level',
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
                  SizedBox(
                      height:
                          35), // Add some spacing between text and containers
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
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                            'assets/missfit/green_img.png'), // Replace 'assets/image1.png' with your image asset path
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Action plan.',
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
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset(
                            'assets/missfit/green_img.png'), // Replace 'assets/image2.png' with your image asset path
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Personalized program',
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
                  SizedBox(
                      height:
                          35), // Add some spacing between text and containers
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 25),
                    child: Container(
                      width: 370,
                      height: 52,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 112, vertical: 17),
                      decoration: ShapeDecoration(
                        color: Color(0xFFFF4343),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child:  Center(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
