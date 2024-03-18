import 'package:flutter/material.dart';

class ditailspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple AppBar'),
        backgroundColor: Colors.red, // Change AppBar color to red
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the left
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              width: 370,
              height: 260,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20.0), // Set border radius here
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    20.0), // Clip the child to match the container's border radius
                child: Image.asset(
                  'assets/ditails/img_back.png', // Change this to your image file name
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              width: 50,
              height: 15,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20.0), // Set border radius here
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    20.0), // Clip the child to match the container's border radius
                child: Image.asset(
                  'assets/ditails/icon_whatsapp.png', // Change this to your second image file name
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Whole Chicken',
                style: TextStyle(
                  fontSize: 20.0, // Adjust the font size as needed
                  fontWeight:
                      FontWeight.bold, // Adjust the font weight as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _buildContainerWithImage('assets/ditails/img_2.png'),
                      _buildContainerWithImage('assets/ditails/img_2.png'),
                      _buildContainerWithImage('assets/ditails/img_2.png'),
                      _buildContainerWithImage('assets/ditails/img_2.png'),
                      _buildContainerWithImage('assets/ditails/img_2.png'),
                      SizedBox(width: 10), // Add space between images and text
                      Text(
                        '14112(2310)',
                        style: TextStyle(
                          fontSize: 7.0, // Adjust the font size as needed
                          fontWeight: FontWeight
                              .normal, // Adjust the font weight as needed
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Add space between the rows
                  Text(
                    'Kg : 6',
                    style: TextStyle(
                      fontSize: 16.0, // Adjust the font size as needed
                      fontWeight:
                          FontWeight.normal, // Adjust the font weight as needed
                    ),
                  ),
                  SizedBox(
                      height:
                          10), // Add space between the text and the new container
                  Container(
                    width: 350,
                    height: 90,
                    color: Colors.white, // Set background color to red
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Add space between the containers
                  Container(
                    width: 350,
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Availability : ',
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: '40',
                                  style: TextStyle(
                                    color: Color(0xFFF51347),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' In Stock',
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Category : ',
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Chicken',
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Tags : ',
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Chicken, Whole Chicken',
                                  style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 392,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 19,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              left: BorderSide(color: Color(0x7F2C3539)),
                              top: BorderSide(color: Color(0x7F2C3539)),
                              right: BorderSide(color: Color(0x7F2C3539)),
                              bottom: BorderSide(
                                  width: 0.20, color: Color(0x7F2C3539)),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Ratings & Reviews',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 8,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                20), // Add space between the text container and the image container
                        Container(
                          width: 350,
                          height: 71,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.all(
                                    10.0), // Adjust margin as needed
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/your_image.png'), // Change this to your image file name
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          10.0), // Adjust padding as needed
                                  child: Text(
                                    "Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set text color to white
                                      fontSize:
                                          14, // Adjust font size as needed
                                    ),
                                    maxLines:
                                        3, // Increase the number of max lines as needed
                                    overflow: TextOverflow
                                        .ellipsis, // Handle overflow with ellipsis
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          height: 71,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.all(
                                    10.0), // Adjust margin as needed
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/your_image.png'), // Change this to your image file name
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          10.0), // Adjust padding as needed
                                  child: Text(
                                    "Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                                    style: TextStyle(
                                      color: Colors
                                          .black, // Set text color to black
                                      fontSize:
                                          14, // Adjust font size as needed
                                    ),
                                    maxLines:
                                        2, // Limit the number of lines to 2
                                    overflow: TextOverflow
                                        .ellipsis, // Handle overflow with ellipsis
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          height: 71,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.all(10.0), // Adjust margin as needed
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/your_image.png'), // Change this to your image file name
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0), // Adjust padding as needed
                                  child: Text(
                                    "Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                                    style: TextStyle(
                                      color: Colors.black, // Set text color to black
                                      fontSize: 14, // Adjust font size as needed
                                    ),
                                    maxLines: 2, // Limit the number of lines to 2
                                    overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 20,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'See All Reviews(45)',
                              style: TextStyle(
                                color: Color(0xFFF51347),
                                fontSize: 8,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0,
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
            // Add more widgets here as needed
          ],
        ),
      ),
    );
  }

  Widget _buildContainerWithImage(String imagePath) {
    return Container(
      width: 7,
      height: 7,
      margin: EdgeInsets.only(right: 0), // No space between containers
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Set border radius here
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            10.0), // Clip the child to match the container's border radius
        child: Image.asset(
          imagePath, // Change this to your image file name
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
    );
  }
}
