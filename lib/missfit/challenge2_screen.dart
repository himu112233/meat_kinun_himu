import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'search_bar.dart'; // Adjust the import based on your file structure
import 'challenge_card.dart'; // Adjust the import based on your file structure

class TakeChallenge extends StatefulWidget {
  const TakeChallenge({super.key});

  @override
  _TakeChallengeState createState() => _TakeChallengeState();
}

class _TakeChallengeState extends State<TakeChallenge> {
  List<String> challenges = [
    'Calorie Torcher',
    'Strength Builder',
    'Cardio King',
    'Flexibility Master',
    'Mindfulness Journey',
    'Quick HIIT',
    'Endurance Challenge',
    'Muscle Gain'
  ];

  List<String> filteredChallenges = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredChallenges = challenges;
    searchController.addListener(filterChallenges);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void filterChallenges() {
    List<String> _filteredChallenges = challenges
        .where((challenge) =>
        challenge.toLowerCase().contains(searchController.text.toLowerCase()))
        .toList();
    setState(() {
      filteredChallenges = _filteredChallenges;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(97),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: const Text('Take a Challenge', style: TextStyle(color: Colors.black)),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SearchBar(controller: searchController),
          ),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Challenges',
              style: TextStyle(
                color: Color(0xFF334155),
                fontSize: 20,
                fontFamily: 'Kanit-Medium',
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/missfit/red_girl.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Calorie Torcher',
                        style: TextStyle(
                          color: Color(0xFF334155),
                          fontSize: 18,
                          fontFamily: 'Archivo-Medium',
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 10),

                      Text(
                        '64%',
                        style: TextStyle(
                          color: Color(0xFF66758C),
                          fontSize: 14,
                          fontFamily: 'Archivo-Regular',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                      const SizedBox(height: 20),
                      LinearProgressBar(progress: 0.44),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Color(0xFFE5E7EB),
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

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: filteredChallenges.length,
              itemBuilder: (context, index) {
                return ChallengeCard(challenge: filteredChallenges[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
class LinearProgressBar extends StatelessWidget {
  final double progress; // progress percentage (0.0 to 1.0)

  const LinearProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      height: 8,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 243,
              height: 8,
              decoration: ShapeDecoration(
                color: Color(0xFFD1D5DB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 243 * progress, // Progress width based on percentage
              height: 8,
              decoration: ShapeDecoration(
                color: Color(0xFFFF4343),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ChallengeCard extends StatelessWidget {
  final String challenge;

  const ChallengeCard({super.key, required this.challenge});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/missfit/red_girl.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      challenge,
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 18,
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _buildLabelWithIcon('assets/missfit/logo1_img.png', 'Intermediate'),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: _buildLabelWithIcon('assets/missfit/logo2_img.png', 'Beginner'),
                        )),
                        _buildLabelWithIcon('assets/missfit/logo3_img.png', 'Advanced'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFFE5E7EB),
                ),
              ),
            ),
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }

  Widget _buildLabelWithIcon(String assetPath, String label) {
    return Row(
      children: [
        Image.asset(
          assetPath,
          width: 16,
          height: 16,
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF66758C),
            fontSize: 14,
            fontFamily: 'Archivo-Regular',
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const SearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD1D5DB)),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xFF9CA3AF),
                    size: 24,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0,left: 4.0),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xFF9CA3AF),
                            fontSize: 14,
                            fontFamily: 'Archivo-Regular',
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFD1D5DB)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Image.asset(
              'assets/missfit/img_7.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
