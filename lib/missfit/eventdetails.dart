import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 320,
              height: 180,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/320x180"),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 208,
              child: Text(
                'Fitness Decathlon',
                style: TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 20,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                  height: 0.07,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _fitnessSubItem(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 208,
              child: Text(
                'Date & Time',
                style: TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 16,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: Color(0xFFE5E7EB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monday, December 24, 2022',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '18.00 - 23.00 PM (GMT +07:00)',
                      style: TextStyle(
                        color: Color(0xFF66758C),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 208,
              child: Text(
                'About Event',
                style: TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 18,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 320,
              height: 200,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Sorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra ',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Read more...',
                      style: TextStyle(
                        color: Color(0xFFFF4343),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 208,
              child: Text(
                'Host',
                style: TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 16,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 49,
                  height: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/49x55"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Juliyet Evana',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 16,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Trainer',
                      style: TextStyle(
                        color: Color(0xFF66758C),
                        fontSize: 14,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 318,
              child: Text(
                'Gallery (Pre-Event)',
                style: TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 18,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (index == 2) {
                    // Display a text for the third item's length
                    return Container(
                      width: 98,
                      height: 98,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBDBDBD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        'Item length: 3',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    );
                  } else {
                    // Display regular items
                    return Container(
                      width: 98,
                      height: 98,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBDBDBD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),


        GestureDetector(
          onTap: (){
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  // Define your modal bottom sheet content here
                  width: MediaQuery.of(context).size.width,
                  child:Column(
                    children: [
                      SizedBox(
                        width: 320,
                        child: Text(
                          'Do you want to confirm your seat?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF334155),
                            fontSize: 18,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        width: 320,
                        height: 180,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/320x180"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            width: 320,
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 17),
            decoration: ShapeDecoration(
              color: Color(0xFFFF4343),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),),
        )
          ],
        ),
      ),
    );
  }

  Widget _fitnessSubItem() {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 100,
          child: Stack(
            children: [
              _buildPerticipentPhoto("https://via.placeholder.com/24x24"),
              Positioned(
                  left: 15,
                  child: _buildPerticipentPhoto(
                      "https://via.placeholder.com/24x24")),
              Positioned(
                  left: 30,
                  child: _buildPerticipentPhoto(
                      "https://via.placeholder.com/24x24")),
            ],
          ),
        ),
        Text(
          '200+ participant',
          style: TextStyle(
            color: Color(0xFF66758C),
            fontSize: 16,
            fontFamily: 'Archivo-Regular',
            fontWeight: FontWeight.w400,
            height: 0.09,
          ),
        ),
        Container(
          width: 8,
          height: 8,
          decoration: ShapeDecoration(
            color: Color(0xFFCBD5E1),
            shape: OvalBorder(),
          ),
        ),
        Container(
          width: 20,
          height: 20,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: FlutterLogo(),
        ),
        Text(
          '10 seats left',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF66758C),
            fontSize: 16,
            fontFamily: 'Archivo-Regular',
            fontWeight: FontWeight.w400,
            height: 0.09,
          ),
        )
      ],
    );
  }

  Widget _buildPerticipentPhoto(String photo) {
    return Container(
      width: 24,
      height: 24,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(photo),
          fit: BoxFit.fill,
        ),
        shape: OvalBorder(
          side: BorderSide(width: 1.20, color: Colors.white),
        ),
      ),
    );
  }
}
