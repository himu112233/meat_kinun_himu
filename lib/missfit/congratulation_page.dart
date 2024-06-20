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
  ]; // This should ideally come from your data source

  List<String> filteredChallenges = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredChallenges = challenges;
    searchController.addListener(() {
      filterChallenges();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void filterChallenges() {
    List<String> _challenges = challenges
        .where((challenge) =>
        challenge.toLowerCase().contains(searchController.text.toLowerCase()))
        .toList();
    setState(() {
      filteredChallenges = _challenges;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(97), // custom height of 97
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: const Text('Take a Challenge'),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        itemCount: filteredChallenges.length + 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return SearchBar(controller: searchController);
          } else if (index == 1) {
            return const SizedBox(height: 22);
          } else if (index == 2) {
            return Text(
              'Challenges',
              style: TextStyle(
                color: Color(0xFF334155),
                fontSize: 20,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            );
          } else if (index == 3) {
            return const SizedBox(height: 22);
          } else {
            return ChallengeCard(challenge: filteredChallenges[index - 4]);
          }
        },
      ),
    );
  }
}

class ChallengeCard extends StatelessWidget {
  final String challenge;

  const ChallengeCard({super.key, required this.challenge});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      const SizedBox(width: 16),
                      _buildLabelWithIcon('assets/missfit/logo2_img.png', 'Beginner'),
                      const SizedBox(width: 16),
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
            fontFamily: 'Archivo',
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
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 14,
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                        border: InputBorder.none,
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
