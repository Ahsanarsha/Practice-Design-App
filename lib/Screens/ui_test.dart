// import 'package:flutter/material.dart';
// import 'package:practice/Screens/Maan.dart';
// import 'package:practice/Screens/home.dart';
// import 'package:practice/Screens/package.dart';
// import 'package:practice/Screens/settings.dart';

// class BottomBar extends StatefulWidget {
//   static const routeName = '/BottomBar';
//   const BottomBar({super.key});

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int currentPageIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       currentPageIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.light_mode),
//               label: 'Maan',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.calendar_month),
//               label: 'Package',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: 'Settings',
//             ),
//           ],
//           unselectedItemColor: Colors.black.withOpacity(0.5),
//           showUnselectedLabels: true,
//           currentIndex: currentPageIndex,
//           selectedItemColor: Colors.blue,
//           onTap: _onItemTapped,
//         ),
//         body: <Widget>[
//           const Home(),
//           const Maan(),
//           const PackageScreen(),
//           const Settings(),
//         ][currentPageIndex]);
//   }
// }
