
import 'package:flutter/material.dart';



class TimeSlotsGridView extends StatefulWidget {
  @override
  _TimeSlotsGridViewState createState() => _TimeSlotsGridViewState();
}

class _TimeSlotsGridViewState extends State<TimeSlotsGridView> {
  int _selectedIndex = -1; // To keep track of the selected index
  final List<String> _timeSlots = [
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:00 PM",
    "3:30 PM"
  ];

  final List<String> _daysOfWeek = [
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
  ];

  int _selectedDayIndex = 0; // To keep track of the selected day index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Time Slot'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),

          Text(
            'Day',
            style: TextStyle(
              color: Color(0xFF1E293B),
              fontSize: 18,
              fontFamily: 'Archivo-SemiBold',
              fontWeight: FontWeight.w600,
              height: 0.08,
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 50, // Fixed height for the day selection row
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _daysOfWeek.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDayIndex = index; // Update selected day index
                    });
                  },
                  child: Container(
                    width: 70,
                    height: 65,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    decoration: BoxDecoration(
                      color: _selectedDayIndex == index
                          ? Color(0xFFFFA142)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: _selectedDayIndex == index
                            ? Color(0xFFFFA142)
                            : Color(0xFFE5E7EB),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _daysOfWeek[index],
                        style: TextStyle(
                          color: _selectedDayIndex == index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20,),

          Text(
            'Time',
            style: TextStyle(
              color: Color(0xFF1E293B),
              fontSize: 18,
              fontFamily: 'Archivo-SemiBold',
              fontWeight: FontWeight.w600,
              height: 0.08,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 96 / 52, // Aspect ratio of the items
                ),
                itemCount: _timeSlots.length, // Number of items in the grid
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index; // Update selected index
                      });
                    },
                    child: Container(
                      width: 96,
                      height: 52,
                      padding: const EdgeInsets.all(16),
                      decoration: _selectedIndex == index
                          ? ShapeDecoration(
                        color: Color(0xFFFFA142),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                          : ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1, color: Color(0xFFE5E7EB)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          _timeSlots[index],
                          style: TextStyle(
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}