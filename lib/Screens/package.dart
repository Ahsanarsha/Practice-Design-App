// import 'package:flutter/material.dart';

// class PackageScreen extends StatelessWidget {
//   static const routeName = '/PackageScreen';
//   const PackageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(
//           Icons.arrow_back,
//           color: Colors.black,
//         ),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: const Text(
//           "Package",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Active Packages",
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(
//               height: 60,
//             ),
//             const Text(
//               "Our Packages",
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: 90,
//               child: Card(
//                 child: Center(
//                   child: ListTile(
//                     leading: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         // color: Colors.amberAccent
//                         color: const Color(0xFFDEEAF4),
//                       ),
//                       child: const Icon(
//                         Icons.star_border_sharp,
//                         color: Color(0xFF1B71B4),
//                       ),
//                     ),
//                     title: const Text(
//                       'Basic',
//                       style: TextStyle(fontSize: 13),
//                     ),
//                     subtitle: const Text(
//                       'Package only for first 15 days',
//                       style: TextStyle(fontSize: 11),
//                     ),
//                     trailing: const Icon(
//                       Icons.arrow_forward_ios,
//                       size: 20,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 90,
//               child: Card(
//                 child: Center(
//                   child: ListTile(
//                     leading: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         // color: Colors.amberAccent
//                         color: const Color(0xFFFFF4DF),
//                       ),
//                       child: const Icon(
//                         Icons.shopping_bag,
//                         color: Color(0xFFFF9806),
//                       ),
//                     ),
//                     title: const Text(
//                       'Business',
//                       style: TextStyle(fontSize: 13),
//                     ),
//                     subtitle: const Text(
//                       'Package only for first 15 days',
//                       style: TextStyle(fontSize: 11),
//                     ),
//                     trailing: const Icon(
//                       Icons.arrow_forward_ios,
//                       size: 20,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 90,
//               child: Card(
//                 child: Center(
//                   child: ListTile(
//                     leading: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         // color: Colors.amberAccent
//                         color: const Color(0xFFF4E9F6),
//                       ),
//                       child: const Icon(
//                         Icons.bookmark_add,
//                         color: Color(0xFF9B27B3),
//                       ),
//                     ),
//                     title: const Text(
//                       'Enterprise',
//                       style: TextStyle(fontSize: 13),
//                     ),
//                     subtitle: const Text(
//                       'Package only for first 15 days',
//                       style: TextStyle(fontSize: 11),
//                     ),
//                     trailing: const Icon(
//                       Icons.arrow_forward_ios,
//                       size: 20,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
