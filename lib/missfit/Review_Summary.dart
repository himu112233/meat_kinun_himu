import 'package:flutter/material.dart';

class ReviewSummary extends StatelessWidget {
  const ReviewSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              // Adjust the corner radius as needed
              bottomRight:
                  Radius.circular(20), // Adjust the corner radius as needed
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black,
            ),
            title: Text(
              'Review Summary',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1E293B),
                fontSize: 18,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w500,
                height: 0.07,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
          color: Color(0xFFF6F6F6),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Adjust the padding as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      // Adjust the padding as needed
                      child: Container(
                        width: 64,
                        height: 76,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage("assets/missfit/gilr_pic.png"),
                            // Replace "your_image.png" with your actual image asset path
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      // Adjust the padding as needed
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sarah Glayre',
                            style: TextStyle(
                              color: Color(0xFF334155),
                              fontSize: 16,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),
                          ),
                          const SizedBox(height: 22),
                          Text(
                            'Fitness Coach',
                            style: TextStyle(
                              color: Color(0xFF66758C),
                              fontSize: 12,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildDivider(context),
              const SizedBox(height: 16),
              // Add any additional widgets or SizedBoxes here
              // Add more widgets here if needed
              _buildSummeryText('Date & Hour', 'May 12, 2024 | 9:00 AM'),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Service',
                    style: TextStyle(
                      color: Color(0xFF66758C),
                      fontSize: 16,
                      fontFamily: 'Archivo',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 210,
                    child: Text(
                      'Programme d\'entraînement avec suivi',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildSummeryText1('Duration', '1 hour'),
              const SizedBox(height: 16),

              _buildSummeryText('DAmount', 'CHF 150'),
              _buildSummeryText1('Total', 'CHF 150'),

              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'I agree with ',
                          style: TextStyle(
                            color: Color(0xFF66758C),
                            fontSize: 16,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                        TextSpan(
                          text: 'terms & conditions',
                          style: TextStyle(
                            color: Color(0xFFE88E32),
                            fontSize: 16,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                width: 320,
                height: 52,
                padding:
                    const EdgeInsets.symmetric(horizontal: 112, vertical: 17),
                decoration: ShapeDecoration(
                  color: Color(0xFFFF4343),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              )

              // Add any additional widgets or SizedBoxes here
              // Add more widgets here if needed
            ],
          )),
    );
  }

  Widget _buildSummeryText(String title, String details) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF66758C),
              fontSize: 16,
              fontFamily: 'Archivo-Medium',
              fontWeight: FontWeight.w500,
              height: 0.08,
            ),
          ),
          Spacer(),
          Text(
            details,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF334155),
              fontSize: 16,
              fontFamily: 'Archivo-Medium',
              fontWeight: FontWeight.w500,
              height: 0.08,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummeryText1(String title, String details) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF66758C),
              fontSize: 16,
              fontFamily: 'Archivo-Medium',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
          ),
          Spacer(),
          Text(
            details,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF334155),
              fontSize: 16,
              fontFamily: 'Archivo-Medium',
              fontWeight: FontWeight.w500,
              height: 0.08,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            // strokeAlign: StrokeAlign.center,
            color: Color(0xFFE5E7EB),
          ),
        ),
      ),
    );
  }
}
