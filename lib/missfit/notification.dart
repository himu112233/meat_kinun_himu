import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // Map to hold the switch states for each notification
  Map<String, bool> switchValues = {
    'progress_notification': false,
    'workout_reminder': false,
    'event_reminder': false,
    'coaching_reminder': false,
    'shop_notification': false,
  };

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerWidth = screenWidth * 0.9; // Adjust the width as needed

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
              'Notification',
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
      body: Container(
        height: screenHeight,
        color: Color(0xFFF6F6F6),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: containerWidth,
              padding: const EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildNotificationRow('Progress Notification', 'progress_notification', containerWidth),
                    const SizedBox(height: 25),
                    buildNotificationRow('Workout Reminder', 'workout_reminder', containerWidth),
                    const SizedBox(height: 25),
                    buildNotificationRow('Event Reminder', 'event_reminder', containerWidth),
                    const SizedBox(height: 25),
                    buildNotificationRow('Coaching Reminder', 'coaching_reminder', containerWidth),
                    const SizedBox(height: 25),
                    buildNotificationRow('Shop Notification', 'shop_notification', containerWidth),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNotificationRow(String title, String value, double containerWidth) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: containerWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF334155),
                    fontSize: 16,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                    height: 1.2, // Adjusted to 1.2 for better spacing
                  ),
                ),
              ),
              SizedBox(
                width: 24,
                height: 24,
                child: Transform.scale(
                  scale: 0.6, // Adjust the scale to fit into 24x24
                  child: Switch(
                    value: switchValues[value] ?? false,
                    activeColor: Colors.white, // Set the active thumb color to white
                    inactiveThumbColor: Colors.white, // Set the inactive thumb color to white
                    activeTrackColor: Color(0xFFE88E32), // Set the active track color
                    inactiveTrackColor: Colors.grey[400], // Set the inactive track color to match the border color
                    onChanged: (bool newValue) {
                      setState(() {
                        switchValues[value] = newValue;
                      }
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Container(
          width: containerWidth,
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
    );
  }
}
