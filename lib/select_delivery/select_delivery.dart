import 'package:flutter/material.dart';

void main() {
  runApp(select_delivery());
}

class select_delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AddressAppBar(),
        body: Column(
          children: [
            SizedBox(height: 5), // Add space for app bar
            Center(
              child: Column(
                children: [
                  AddressContainer(),
                  SizedBox(height: 10), // Add spacing between containers
                  AddressContainer(),
                  SizedBox(height: 10), // Add spacing between containers
                  AddressContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF51347),
      leading: Container(
        width: 15,
        height: 15,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0,top: 15),
          child: Stack(
            children: [
              Image.asset(
                'assets/adress/img_back.png', // Provide your image asset path here
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select Delivery Address',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
            onTap: () {
              // Add your onPressed logic here
              print('Button pressed');
            },
            child: Container(
              width: 30,
              height: 12,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Color(0xFF1EA41E),
                        fontSize: 6,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class AddressContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deliver To',
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 8,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(height:30), // Add spacing between texts
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          'Address',
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 8,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5), // Add spacing between columns
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MD. Sazzadul Alam Sajib', // New text
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 10,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 8), // Add spacing between texts
                        Padding(
                          padding: EdgeInsets.only(top: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ajoldia, chamurkhan, uttarkhan, uttara, dhaka-1230 Chamurkhan, Dhaka - North, Dhaka ajoldia, chamurkhan, uttarkhan, uttara, dhaka-1230  Chamurkhan, Dhaka - North, Dhaka',
                                style: TextStyle(
                                  color: Color(0xFF555555),
                                  fontSize: 10,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                ),
                              ),
                              SizedBox(height: 0), // Add spacing between texts
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      // Add your decoration properties here if needed
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/adress/img_phone.png', // Provide your image asset path here
                                          width: 12,
                                          height: 12,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8), // Add spacing between container and text
                                  Text(
                                    '01580656216',
                                    style: TextStyle(
                                      color: Color(0xFF555555),
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0), // Add spacing between texts
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      // Add your decoration properties here if needed
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/adress/img_email.png', // Provide your image asset path here
                                          width: 12,
                                          height: 12,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8), // Add spacing between container and text
                                  Text(
                                    'sajibsazzadulalam@gmail.com',
                                    style: TextStyle(
                                      color: Color(0xFF555555),
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0), // Add spacing between texts
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      // Add your decoration properties here if needed
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/adress/img_whatsap.png', // Provide your image asset path here
                                          width: 12,
                                          height: 12,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8), // Add spacing between container and text
                                  Text(
                                    '01580656216',
                                    style: TextStyle(
                                      color: Color(0xFF555555),
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 88,top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddressActionContainer('Home'),
                SizedBox(width: 10),
                AddressActionContainer('Default'),
              ],
            ),
          ),
        ],
    ),
    );
  }
}

class AddressActionContainer extends StatelessWidget {
  final String label;

  AddressActionContainer(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 15,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.30, color: Color(0xFF1EA41E)),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF1EA41E),
            fontSize: 8,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w300,
            height: 0,
          ),
        ),
      ),
    );
  }
}
