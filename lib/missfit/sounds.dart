import 'package:flutter/material.dart';

class SoundPage extends StatefulWidget {
  const SoundPage({super.key});

  @override
  _SoundPageState createState() => _SoundPageState();
}

class _SoundPageState extends State<SoundPage> {
  bool muteSwitch = true;
  bool voiceGuideSwitch = false;
  bool coachTipsSwitch = false;
  bool countdownSoundSwitch = false;
  bool soundEffectSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(97.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text(
              'Sound',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1E293B),
                fontSize: 18,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSoundOptionRow('Mute', muteSwitch, (value) {
              setState(() {
                muteSwitch = value;
              });
            }),
            const SizedBox(height: 20),
            buildSoundOptionRow('Voice Guide', voiceGuideSwitch, (value) {
              setState(() {
                voiceGuideSwitch = value;
              });
            }),
            const SizedBox(height: 20),
            buildSoundOptionRow('Coach Tips', coachTipsSwitch, (value) {
              setState(() {
                coachTipsSwitch = value;
              });
            }),
            const SizedBox(height: 20),
            buildSoundOptionRow('Countdown Sound', countdownSoundSwitch, (value) {
              setState(() {
                countdownSoundSwitch = value;
              });
            }),
            const SizedBox(height: 20),
            buildSoundOptionRow('Sound Effect', soundEffectSwitch, (value) {
              setState(() {
                soundEffectSwitch = value;
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget buildSoundOptionRow(String label, bool switchValue, Function(bool) onChanged) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 146,
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF334155),
                  fontSize: 16,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
              ),
            ),
            Switch(
              value: switchValue,
              onChanged: onChanged,
            ),
          ],
        ),
        const SizedBox(height: 14),
        Container(
          width: 320,
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xFFE5E7EB),
              ),
            ),
          ),
        ),
      ],
    );
  }
}