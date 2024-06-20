import 'package:flutter/material.dart';

class SubscriptionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(97.0), // Set the height of the AppBar
          child: ClipPath(
            clipper: AppBarClipper(), // Use custom clipper
            child: AppBar(
              backgroundColor: Colors.white, // Set AppBar color to white
              title: Center(
                child: Text(
                  'Subscription',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1E293B),
                    fontSize: 18,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
              ),
              automaticallyImplyLeading: false, // Remove the back button if not needed
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: Color(0xFFF6F6F6), // Set body background color
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 12), // Add some padding for the text
                      child: Text(
                        'Select Months',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xFF334155),
                          fontSize: 18,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w500,
                          height: 1.5, // Adjusted height for proper line height
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Subscription(),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.white,
                        child: Center(child: Text('Container 1')),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.white,
                        child: Center(child: Text('Container 2')),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.white,
                        child: Center(child: Text('Container 3')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 420,
                height: 88,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Total:',
                            style: TextStyle(
                              color: Color(0xFF334155),
                              fontSize: 18,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                            ),
                          ),
                          TextSpan(
                            text: ' CHF 1260',
                            style: TextStyle(
                              color: Color(0xFF00AA35),
                              fontSize: 18,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 67),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                          builder: (BuildContext context) {
                            return Container(
                              width: 400,
                              height: 340,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 260,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Image.asset('assets/missfit/percent_logo.png'), // Replace 'assets/your_image.png' with the actual path to your image asset
                                        ),
                                        const SizedBox(height: 20),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Do you have any Promo Code?',
                                              style: TextStyle(
                                                color: Color(0xFF334155),
                                                fontSize: 20,
                                                fontFamily: 'Kanit',
                                                fontWeight: FontWeight.w500,
                                                height: 0.06,
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            Container(
                                              width: 320,
                                              height: 44,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 320,
                                                      height: 44,
                                                      decoration: ShapeDecoration(
                                                        color: Colors.white,
                                                        shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                            width: 1,
                                                            color: Color(0xFFD1D5DB),
                                                          ),
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 226.53,
                                                    top: 0,
                                                    child: Container(
                                                      width: 93.47,
                                                      height: 44,
                                                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFD1D5DB),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(4),
                                                            bottomRight: Radius.circular(4),
                                                          ),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            'Apply',
                                                            style: TextStyle(
                                                              color: Color(0xFF66758C),
                                                              fontSize: 14,
                                                              fontFamily: 'Archivo',
                                                              fontWeight: FontWeight.w600,
                                                              height: 0.10,
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
                                        const SizedBox(height: 20),
                                        Container(
                                          width: 320,
                                          height: 52,
                                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 17),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFFFF4343)),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Skip',
                                                style: TextStyle(
                                                  color: Color(0xFFFF4343),
                                                  fontSize: 16,
                                                  fontFamily: 'Archivo',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0.09,
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
                          },
                        );
                      },
                      child: Container(
                        width: 121,
                        height: 52,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFF4343),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                              ),
                            ),
                          ],
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

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20); // Start from bottom left corner with radius
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 20); // Add rounded bottom
    path.lineTo(size.width, 0); // Top right corner
    path.close(); // Complete the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 68 / 61, // Adjust aspect ratio to match the item size
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        bool isSelected = _selectedIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Adjust padding for each item
            child: SizedBox(
              width: 68,
              height: 61,
              child: Container(
                padding: const EdgeInsets.only(top: 19, bottom: 18),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: isSelected ? Color(0xFFFFA142) : Color(0xFFE5E7EB), // Change selected color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
