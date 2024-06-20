import 'package:flutter/material.dart';

class CourseEdu extends StatefulWidget {
  final String img;

  CourseEdu(this.img);

  @override
  _CourseEduState createState() => _CourseEduState();
}

class _CourseEduState extends State<CourseEdu> {
  bool isVideoSelected = true;
  final List<Map<String, String>> items = [
    {'title': 'Introduction to Flutter', 'subtitle': '20 min 50 sec'},
    {'title': 'Flutter Widgets', 'subtitle': '20 min 50 sec'},
    {'title': 'State Management in Flutter', 'subtitle': '20 min 50 sec'},
    {'title': 'Flutter Animations', 'subtitle': '20 min 50 sec'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0), // Gap on all sides
            child: Container(
              width: MediaQuery.of(context).size.width, // Width of the screen
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0), // Corner radius
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 390,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                    ),
                    child: Image.asset(
                      'assets/education/flutter1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Making the container circular
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        size: 44, // Adjust the size of the icon as needed
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0), // Align with the text padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
              children: [
                Text(
                  "Flutter Complete Course",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Created by Dear Programmers",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "55 Videos",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0), // Align with the text padding
            child: Container(
              width: 390,
              height: 97,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVideoSelected = true;
                      });
                    },
                    child: Container(
                      width: 122,
                      height: 55,
                      decoration: BoxDecoration(
                        color: isVideoSelected ? Colors.indigoAccent : Colors.indigo[200],
                        borderRadius: BorderRadius.circular(12), // Set corner radius here
                      ),
                      child: Center(
                        child: Text(
                          'Video',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white, // Set text color to white
                            fontWeight: FontWeight.bold, // Make text bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVideoSelected = false;
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 55,
                      decoration: BoxDecoration(
                        color: isVideoSelected ? Colors.indigo[200] : Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(12), // Set corner radius here
                      ),
                      child: Center(
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white, // Set text color to white
                            fontWeight: FontWeight.bold, // Make text bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), // Add some spacing
          if (isVideoSelected)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0), // Align with the text padding
              child: Container(
                width: 390,
                height: 340,
                color: Colors.transparent, // Set the color to red
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                      title: Text(
                        items[index]['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        items[index]['subtitle']!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          if (!isVideoSelected)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0), // Align with the text padding
              child: Container(
                width: 390,
                height: 340,
                color: Colors.transparent, // Set the color to green
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                              "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20), // Add some spacing
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Course Length: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Icon(
                                    Icons.timer,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "26 Hours",
                                style: TextStyle(
                                  fontSize: 18, // Different font size
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10), // Add some spacing
                        Row(
                          children: [
                            SizedBox(width: 5), // Add some spacing between icon and text
                            Text(
                              "Rating:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 20,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
        ],
      ),
    );
  }
}
