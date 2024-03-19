import 'package:flutter/material.dart';
class ChallengesItem {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;

  ChallengesItem({
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
  });
}
class TakeAChallnege extends StatefulWidget {
  const TakeAChallnege({super.key});

  @override
  State<TakeAChallnege> createState() => _TakeAChallnegeState();
}

class _TakeAChallnegeState extends State<TakeAChallnege> {
  TextEditingController _searchController = TextEditingController();
  final List<ChallengesItem> items = [
    ChallengesItem(
      title: 'Calorie Torcher',
      subtitle1: 'Advance',
      subtitle2: '45 min',
      subtitle3: '400 cal',
    ),
    ChallengesItem(
      title: 'Another Item',
      subtitle1: 'Intermediate',
      subtitle2: '30 min',
      subtitle3: '300 cal',
    ),
    ChallengesItem(
      title: 'Calorie Torcher',
      subtitle1: 'Advance',
      subtitle2: '45 min',
      subtitle3: '400 cal',
    ),
    ChallengesItem(
      title: 'Another Item',
      subtitle1: 'Intermediate',
      subtitle2: '30 min',
      subtitle3: '300 cal',
    ),
    ChallengesItem(
      title: 'Calorie Torcher',
      subtitle1: 'Advance',
      subtitle2: '45 min',
      subtitle3: '400 cal',
    ),
    ChallengesItem(
      title: 'Another Item',
      subtitle1: 'Intermediate',
      subtitle2: '30 min',
      subtitle3: '300 cal',
    ),
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF18181B)),
        child: Column(
          children: [
            appBar('Take A Challenge'),
            SizedBox(
              height: 20,
            ),
            _buildSearchField(),
            SizedBox(
              height: 20,
            ),
            _buildTitle('Challenges'),
            SizedBox(
              height: 20,
            ),
            _buiildCalorieTorcherWidget(),


            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return _buildListItem(items[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(ChallengesItem item) {
    return Container(
      width: 320,
      height: 82,
      child: Column(
        children: [
          Container(
            height: 66,
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/60x60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 243,
                        child: Text(
                          item.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          listItemText(item.subtitle1),
                          SizedBox(width: 15),
                          listItemText(item.subtitle2),
                          SizedBox(width: 15),
                          listItemText(item.subtitle3),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 320,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF363434),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listItemText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontFamily: 'Archivo',
        fontWeight: FontWeight.w500,
        height: 1.12,
      ),
    );
  }

  Widget _buiildCalorieTorcherWidget() {
    return Container(
      width: 320,
      height: 82,
      child: Column(
        children: [
          Container(
            height: 66,
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/60x60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 243,
                        child: Text(
                          'Calorie Torcher',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                          ),
                        ),
                      ),
                      Text(
                        '64%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w500,
                          height: 1.12,
                        ),
                      ),
                      SizedBox(
                        width: 243,
                        child: LinearProgressIndicator(
                          minHeight: 8,
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFFFF4343)),
                          value: 0.5,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 320,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF363434),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle(String title) {
    return SizedBox(
      width: 320,
      child: Text(
        title,
        // 'Challenges',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Kanit',
          fontWeight: FontWeight.w500,
          height: 1.07,
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 268,
          height: 40,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.05),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.white.withOpacity(0.11),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              // Add spacing between icon and text field
              Expanded(
                child: Center(
                  child: TextField(
                    controller: _searchController,
                    // Your TextEditingController
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      // Hide the border of the text field
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.05000000074505806),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.white.withOpacity(0.10999999940395355),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }

  Widget appBar(String title) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // Set width to screen width
      height: 97,
      // Set a fixed height
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        border: Border(
          left: BorderSide(
            color: Colors.white.withOpacity(0.11),
          ),
          top: BorderSide(
            color: Colors.white.withOpacity(0.11),
          ),
          right: BorderSide(
            color: Colors.white.withOpacity(0.11),
          ),
          bottom: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.11),
          ),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // Adjust this value as needed
            child: Image.asset(
              "assets/checkout/icon_right_arrow.png",
              height: 15,
              width: 15,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Take A Challenge',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Kanit',
                  fontWeight: FontWeight.w500,
                  height: 1.07,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
