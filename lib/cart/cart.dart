import 'package:flutter/material.dart';

void main() {
  runApp(Cart());
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(320, 75),
          child: AppBar(
            backgroundColor: Color(0xFFF51347),
            elevation: 0,
            title: Container(
              child: Text(
                'My Cart',
                textAlign: TextAlign.center,
              ),
            ),
            centerTitle: true,
            leading: Container(
              margin: EdgeInsets.only(left: 16),
              child: IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/cart/img.png', // Your back button image asset
                    width: 24, // Adjust the width as needed
                    height: 24, // Adjust the height as needed
                  ),
                ),
                onPressed: () {
                  // Add your back button onPressed logic here
                },
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  // Add your delete button onTap logic here
                },
                child: Container(
                  width: 36,
                  height: 15,
                  margin: EdgeInsets.only(right: 16),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.black, // Change text color if needed
                      fontSize: 10, // Change font size if needed
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.grey[200], // Set the background color to grey[200]
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity, // To fill the available width
                height: 178,
                decoration: ShapeDecoration(
                  color: Colors.white, // Change color for the container
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8, // Adjust the position of the indicator as needed
                      left: 8, // Adjust the position of the indicator as needed
                      child: Container(
                        width: 44,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            'Chicken',
                            style: TextStyle(
                              color: Color(0xFF555555),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity, // To fill the available width
                height: 178,
                decoration: ShapeDecoration(
                  color: Colors.green, // Change color for the second container
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                // Add content for the second container here
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity, // To fill the available width
                height: 178,
                decoration: ShapeDecoration(
                  color: Colors.orange, // Change color for the third container
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                // Add content for the third container here
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity, // To fill the available width
                height: 178,
                decoration: ShapeDecoration(
                  color: Colors.red, // Change color for the fourth container
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                // Add content for the fourth container here
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
