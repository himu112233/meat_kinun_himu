// import 'package:flutter/material.dart';
//
// class Payment extends StatelessWidget implements PreferredSizeWidget {
//
//
//   const Payment({
//     Key? key,
//
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Color(0xFFF51347),
//       elevation: 0,
//       title: Row(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.pop(context); // This handles the back functionality
//             },
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Image.asset(
//                 'assets/back_arrow.png', // Replace 'back_arrow.png' with your back arrow asset path
//                 width: 40,
//                 height: 40,
//                 // Add any other image properties you need
//               ),
//             ),
//           ),
//           SizedBox(width: 8),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
//
//
