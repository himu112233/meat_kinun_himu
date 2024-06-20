import 'package:flutter/material.dart';


class ReviewSummery extends StatefulWidget {
  const ReviewSummery({super.key});

  @override
  State<ReviewSummery> createState() => _ReviewSummeryState();
}

class _ReviewSummeryState extends State<ReviewSummery> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Duration',
                style: TextStyle(
                  color: Color(0xFF66758C),
                  fontSize: 16,
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                ),
              ),

              SizedBox(
                width: 210,
                child: Text(
                  '12 months',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF334155),
                    fontSize: 16,
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),
              )
            ],
          ),


        ],
      ),
    );
  }
}
