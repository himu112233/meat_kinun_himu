import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Adjust the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.red,
          title: GestureDetector(
            onTap: () {
              // Handle tapping on the search bar
              // You can implement the logic to focus on the text field here
            },
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the corner radius
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Container(
                  width: 161, // Adjust the width as needed
                  height: 21, // Adjust the height as needed
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            onTap: () {
                              // Handle tapping on the text field
                              // You can implement the logic to focus on the text field here
                            },
                            decoration: InputDecoration(
                              hintText: 'Search anything here',
                              border:
                                  InputBorder.none, // Remove the default border
                              isDense:
                                  true, // Reduce the height of the input field
                              contentPadding:
                                  EdgeInsets.zero, // Remove any default padding
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.red, // Change the color to red
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.lock_open,
                  color: Colors.white), // Change color to white
              onPressed: () {
                // Add your action here
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active_outlined,
                  color: Colors.white), // Change color to white
              onPressed: () {
                // Add your action here
              },
            ),
          ],
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.account_circle,
                    color: Colors.white), // Change color to white
                onPressed: () {
                  // Add your action here
                },
              ),
              SizedBox(
                  width:
                      20), // Add some space between the IconButton and the Container
              Container(
                width: 20,
                height: 22,
                decoration: BoxDecoration(
                    // Adjust decoration as needed
                    ),
                child: Image.asset(
                  'assets/home/img_16.png', // Replace 'assets/your_image.png' with your image asset path
                  width: double
                      .infinity, // Make the image width fit the container width
                  height: double
                      .infinity, // Make the image height fit the container height
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 135,
              width: 400,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/home/img_back.png'), // Replace 'assets/img.png' with your image asset path
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(child: Text('Big Container')),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 95,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/home/img_5.png'), // Replace 'assets/img.png' with your image asset path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 25,
                        color: Colors.black12
                            .withOpacity(0.5), // Black color with 50% opacity
                        child: Center(
                          child: Image.asset(
                            'assets/home/img_8.png', // Replace 'assets/home/your_image.png' with your image asset path
                            width: 20, // Adjust width as needed
                            height: 20, // Adjust height as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 95,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/home/img_9.png'), // Replace 'assets/img.png' with your image asset path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 25,
                        color: Colors.black12
                            .withOpacity(0.5), // Black color with 50% opacity
                        child: Center(
                          child: Image.asset(
                            'assets/home/img_8.png', // Replace 'assets/home/your_image.png' with your image asset path
                            width: 20, // Adjust width as needed
                            height: 20, // Adjust height as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 95,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/home/img_10.png'), // Replace 'assets/img.png' with your image asset path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 25,
                        color: Colors.black12
                            .withOpacity(0.5), // Black color with 50% opacity
                        child: Center(
                          child: Image.asset(
                            'assets/home/img_8.png', // Replace 'assets/home/your_image.png' with your image asset path
                            width: 20, // Adjust width as needed
                            height: 20, // Adjust height as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 340,
              height: 90,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/home/img_4.png'), // Replace 'assets/home/img_4.png' with your image asset path
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    height:
                        30, // Adjust the height of the black transparent container as needed
                    child: Container(
                      color: Colors.black
                          .withOpacity(0.5), // Adjust the opacity as needed
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            bottom: 0,
                            right: 0,
                            height:
                                30, // Adjust the height of the black transparent container as needed
                            child: Container(
                              color: Colors.black.withOpacity(
                                  0.5), // Adjust the opacity as needed
                              child: Center(
                                child: Image.asset(
                                  'assets/home/img_15.png', // Replace 'assets/your_image.png' with your image asset path
                                  width:
                                      20, // Adjust the width of the image as needed
                                  height:
                                      20, // Adjust the height of the image as needed
                                  fit: BoxFit
                                      .contain, // Ensure the entire image fits within the box
                                ),
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
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 370,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.circular(10), // Adjust the value as needed
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 15,
                        top: 5,
                        child: Text(
                          'Our Recommended Product',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Row(
                            children: List.generate(
                              5, // Change itemCount to 5
                              (index) => Container(
                                width: 88,
                                height: 85,
                                margin: EdgeInsets.symmetric(horizontal: 19),
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Change the color of each item as needed
                                  borderRadius: BorderRadius.circular(
                                      8), // Adjust the value as needed
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      width: 88,
                                      height: 85,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 19),
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Change the color of each item as needed
                                        borderRadius: BorderRadius.circular(
                                            8), // Adjust the value as needed
                                      ),
                                    ),
                                    Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Container(
                                          width: 50,
                                          height:
                                              110, // Adjusted height to accommodate text
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 19),
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .white, // Change the color of each item as needed
                                            borderRadius: BorderRadius.circular(
                                                8), // Adjust the value as needed
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/home/img_$index.png', // Replace 'assets/home/img_$index.png' with your image asset path
                                          width: 90, // Adjust width as needed
                                          height: 50, // Adjust height as needed
                                          fit: BoxFit
                                              .cover, // Adjust the fit as needed
                                        ),
                                        Positioned(
                                          top:
                                              50, // Adjust the top position as needed
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width:
                                                    88, // Set width to match container width
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10.0),
                                                  child: Text(
                                                    'Chicken Thigh',
                                                    style: TextStyle(
                                                      fontSize:
                                                          10, // Adjust font size as needed
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height:
                                                      1), // Adjust spacing between lines
                                              Container(
                                                width:
                                                    88, // Set width to match container width
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    style: TextStyle(
                                                      fontSize:
                                                          12, // Adjust font size as needed
                                                      color: Colors
                                                          .red, // Set color to red
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '\$ 246',
                                                        style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold, // Make the number bold
                                                          fontSize:
                                                              14, // Adjust font size as needed
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' Sold',
                                                        style: TextStyle(
                                                          fontSize:
                                                              10, // Adjust font size as needed for "Sold" text
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
                                  ],
                                ),
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
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 370,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius:
                        BorderRadius.circular(10), // Adjust the value as needed
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hot Selling ',
                                style: TextStyle(
                                  color: Colors.red, // Change text color to red
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: 'This Week',
                                style: TextStyle(
                                  color: Colors
                                      .black, // Change text color to black
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              10), // Adjust spacing between ListView and GridView
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(
                                        5), // Adjust padding as needed
                                    child: Container(
                                      width: 145, // Adjust width as needed
                                      height: 170, // Adjust height as needed
                                      decoration: BoxDecoration(
                                        color: Colors.white, // Adjust color as needed
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(0.5), // Shadow color
                                            spreadRadius: 3, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset: Offset(0, 3), // Shadow offset
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Image.asset(
                                                  'assets/home/img_13.png', // Replace with your image asset path
                                                  fit: BoxFit.cover, // Adjust the fit to cover both width and height
                                                ),
                                              ),
                                              SizedBox(height: 5), // Add spacing between the image and the text
                                              Padding(
                                                padding: EdgeInsets.only(left: 10), // Add padding to the left side
                                                child: Text(
                                                  'Chicken Thigh',
                                                  style: TextStyle(
                                                    color: Color(0xFF555555),
                                                    fontSize: 10,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10), // Add padding to the left side
                                                child: Text(
                                                  '4.6/5(62)',
                                                  style: TextStyle(
                                                    color: Color(0xFF555555),
                                                    fontSize: 8,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w300,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 18),
                                              Padding(
                                                padding: EdgeInsets.only(left: 10), // Add padding to the left side
                                                child: Text(
                                                  '246',
                                                  style: TextStyle(
                                                    color: Color(0xFFF51347),
                                                    fontSize: 10,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            top: 5,
                                            right: 10,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Piece : ',
                                                        style: TextStyle(
                                                          color: Color(0xFF2C3539),
                                                          fontSize: 8,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                          height: 0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '10',
                                                        style: TextStyle(
                                                          color: Color(0xFF1EA41E),
                                                          fontSize: 10,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w600,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                Text(
                                                  '560 Sold',
                                                  style: TextStyle(
                                                    color: Color(0xFF2C3539),
                                                    fontSize: 8,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w300,
                                                    height: 0,
                                                  ),
                                                ),
                                                // Add additional Text widget here if needed
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                        5), // Adjust padding as needed
                                    child: Container(
                                      width: 145, // Adjust width as needed
                                      height: 170, // Adjust height as needed
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Adjust color as needed
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(
                                                0.5), // Shadow color
                                            spreadRadius: 3, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset:
                                                Offset(0, 3), // Shadow offset
                                          ),
                                        ],
                                      ),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          'assets/home/img_14.png', // Replace with your image asset path
                                          fit: BoxFit
                                              .cover, // Adjust the fit to cover both width and height
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height:
                                      30), // Adjust vertical spacing between rows
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(
                                        5), // Adjust padding as needed
                                    child: Container(
                                      width: 145, // Adjust width as needed
                                      height: 170, // Adjust height as needed
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Adjust color as needed
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(
                                                0.5), // Shadow color
                                            spreadRadius: 3, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset:
                                                Offset(0, 3), // Shadow offset
                                          ),
                                        ],
                                      ),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          'assets/home/img_12.png', // Replace with your image asset path
                                          fit: BoxFit
                                              .cover, // Adjust the fit to cover both width and height
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                        5), // Adjust padding as needed
                                    child: Container(
                                      width: 145, // Adjust width as needed
                                      height: 170, // Adjust height as needed
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Adjust color as needed
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(
                                                0.5), // Shadow color
                                            spreadRadius: 3, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset:
                                                Offset(0, 3), // Shadow offset
                                          ),
                                        ],
                                      ),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          'assets/home/img_11.png', // Replace with your image asset path
                                          fit: BoxFit
                                              .cover, // Adjust the fit to cover both width and height
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 05),
                Container(
                  width: 370,
                  height: 392,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius:
                        BorderRadius.circular(10), // Adjust the value as needed
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Just for ',
                                style: TextStyle(
                                  color:
                                      Colors.black, // Change text color to red
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: 'You',
                                style: TextStyle(
                                  color:
                                      Colors.red, // Change text color to black
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height:
                              10), // Adjust the spacing between the text and the ListView as needed
                      SizedBox(
                          height:
                              10), // Adjust spacing between ListView and GridView
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of columns in the grid
                            mainAxisSpacing: 10, // Spacing between rows
                            crossAxisSpacing: 10, // Spacing between columns
                            childAspectRatio:
                                1, // Aspect ratio of each grid item (square)
                          ),
                          itemCount: 8, // Number of items in the GridView
                          itemBuilder: (context, index) {
                            // Return each item in the GridView
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white, // Adjust color as needed
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the corner radius
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red
                                        .withOpacity(0.5), // Shadow color
                                    spreadRadius: 3, // Spread radius
                                    blurRadius: 7, // Blur radius
                                    offset: Offset(0, 3), // Shadow offset
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/home/img_$index.png', // Replace 'assets/home/img_$index.png' with your image asset path
                                  width: 145, // Adjust width as needed
                                  height: 170, // Adjust height as needed
                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                              ),
                            );
                          },
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {

          });
          myIndex = index;
        },
        currentIndex: myIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
    );
  }
}

