// import 'package:flutter/material.dart';

// class Settings extends StatefulWidget {
//   const Settings({super.key});

//   @override
//   State<Settings> createState() => _SettingsState();
// }

// class _SettingsState extends State<Settings> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Column(
//         children: [
//           SizedBox(
//             height: 60,
//             child: Card(
//               //  semanticContainer: true,
//               shape: BeveledRectangleBorder(
//                   borderRadius: BorderRadius.circular(2)),
//               color: Colors.white,
//               child: ListTile(
//                 visualDensity:
//                     const VisualDensity(horizontal: -4, vertical: -4),
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal: 10,
//                 ),
//                 leading: SizedBox(
//                   height: 40,
//                   width: 40,
//                   child: DecoratedBox(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       image: const DecorationImage(
//                         filterQuality: FilterQuality.high,
//                         fit: BoxFit.fill,
//                         image: AssetImage(
//                           'assets/images/ahsan.jpg',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 title: const SizedBox(
//                   height: 25,
//                   child: Text(
//                     "Ahasn Store",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 subtitle: SizedBox(
//                   height: 19,
//                   child: Text(
//                     'Free Plan',
//                     style: TextStyle(
//                         fontSize: 11, color: Colors.black.withOpacity(0.5)),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const Column(
//             children: [
//               ListTile(
//                 leading: Icon(
//                   Icons.person_outlined,
//                   color: Colors.blue,
//                 ),
//                 title: Text('Profile'),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//               // ListTile(
//               //   leading: Icon(
//               //     Icons.shopping_bag_outlined,
//               //     color: Colors.blue,
//               //   ),
//               //   title: Text('Create Online Store'),
//               //   trailing: Icon(Icons.arrow_forward_ios),
//               // ),
//               ListTile(
//                 leading: Icon(
//                   Icons.settings,
//                   color: Colors.blue,
//                 ),
//                 title: Text('Settings'),
//                 trailing: Icon(Icons.arrow_drop_down_outlined),
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.question_mark_rounded,
//                   color: Colors.blue,
//                 ),
//                 title: Text('Help'),
//                 trailing: Icon(Icons.arrow_drop_down_outlined),
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.file_copy_outlined,
//                   color: Colors.blue,
//                 ),
//                 title: Text('About Us'),
//                 trailing: Icon(Icons.arrow_drop_down_outlined),
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.logout_outlined,
//                   color: Colors.blue,
//                 ),
//                 title: Text('Log Out'),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//             ],
//           ),
//         ],
//       )),
//     );
//   }
// }
