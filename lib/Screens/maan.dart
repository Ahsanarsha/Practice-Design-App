// import 'package:flutter/material.dart';

// class Maan extends StatefulWidget {
//   static const routeName = '/Maan';
//   const Maan({super.key});

//   @override
//   State<Maan> createState() => _MaanState();
// }

// class _MaanState extends State<Maan> with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     final List<String> name = [
//       'Shoe Snakers',
//       "Women Dress",
//       'Tab',
//       'Shoe Snakers',
//     ];

//     final List<String> prices = [
//       '\$64.99',
//       '\$50.5',
//       '\$36.55',
//       '\$20.2',
//     ];
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 50,
//               child: Card(
//                 margin: const EdgeInsets.all(0),
//                 shape: const BeveledRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.zero),
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                   child: Stack(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           color: Colors.blue.withOpacity(0.1),
//                         ),
//                         height: 40,
//                         width: 30,
//                         child: const Icon(
//                           Icons.cloud,
//                           color: Colors.blue,
//                           size: 23,
//                         ),
//                       ),
//                       const Center(
//                         child: Text(
//                           'Maan Theme',
//                           textAlign: TextAlign.center,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'All Products',
//                         style: TextStyle(
//                           fontSize: 18,
//                           //fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 25,
//                       ),
//                       GridView.builder(
//                         itemCount: 4,
//                         physics: const NeverScrollableScrollPhysics(),
//                         shrinkWrap: true,
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 2,
//                                 childAspectRatio: 0.8,
//                                 mainAxisExtent: 250,
//                                 mainAxisSpacing: 5,
//                                 crossAxisSpacing: 10),
//                         itemBuilder: (context, index) => SizedBox(
//                           //height: 250,
//                           child: Card(
//                             semanticContainer: true,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: 100,
//                                   child: Center(
//                                     child: Container(
//                                       height: 40,
//                                       width: 40,
//                                       decoration: const BoxDecoration(
//                                         image: DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: AssetImage(
//                                             'assets/images/ahsan.jpg',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 20,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           name[index],
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                         const SizedBox(
//                                           height: 5.0,
//                                         ),
//                                         Text(
//                                           prices[index],
//                                           style: TextStyle(
//                                             fontSize: 10,
//                                             color:
//                                                 Colors.black.withOpacity(0.6),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const Padding(
//                                       padding: EdgeInsets.only(right: 5.0),
//                                       child: Icon(
//                                         Icons.add_shopping_cart,
//                                         color: Colors.blue,
//                                         size: 18,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
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
