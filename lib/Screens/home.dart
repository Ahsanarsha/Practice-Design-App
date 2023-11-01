// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   static const routeName = '/Home';
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   late PageController pageController = PageController();
//   int pageNo = 0;

//   @override
//   void initState() {
//     pageController = PageController();
//     super.initState();
//   }

//   // final List<String> enterprise = [
//   //   'Branch',
//   //   'Damage',
//   //   'Adjusment',
//   //   'Transaction',
//   //   'Gift',
//   //   "Loss&Profit",
//   //   'Income',
//   //   'OnlineOrder',
//   //   'UserRole',
//   //   'Backup',
//   //   'Return',
//   // ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Card(
//               semanticContainer: true,
//               shape: BeveledRectangleBorder(
//                   borderRadius: BorderRadius.circular(2)),
//               color: Colors.white,
//               elevation: 3,
//               child: ListTile(
//                 visualDensity:
//                     const VisualDensity(horizontal: -4, vertical: -4),
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal: 10,
//                 ),
//                 leading: SizedBox(
//                   height: 45,
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
//                 title: const Text(
//                   "Ahasn Store",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Text(
//                   'Free Plan',
//                   style: TextStyle(
//                       fontSize: 11, color: Colors.black.withOpacity(0.5)),
//                 ),
//                 trailing: Container(
//                   width: 40,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.blue.withOpacity(0.1),
//                   ),
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.notifications_active),
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 15),
//                           child: Text(
//                             'Free',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: GridView(
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                             gridDelegate:
//                                 const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 4,
//                               childAspectRatio: 1.0,
//                             ),
//                             children: const [
//                               GridTileofApp(
//                                   iconData: "assets/images/calculator.png",
//                                   firstText: 'Calculaor',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/cart.png",
//                                   firstText: 'Sales',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/fast-delivery.png",
//                                   firstText: 'Delivery',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/bill.png",
//                                   firstText: 'DueList',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/customer.png",
//                                   firstText: 'Customer',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/package.png",
//                                   firstText: 'Products',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/report.png",
//                                   firstText: 'Reports',
//                                   isEnable: true),
//                               // GridTileofApp(
//                               //     iconData: "assets/images/social-media.png",
//                               //     firstText: 'Marketing',
//                               //     isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/payment.png",
//                                   firstText: 'Purchase',
//                                   isEnable: true),
//                               // GridTileofApp(
//                               //     iconData: "assets/images/expense.png",
//                               //     firstText: 'Expense',
//                               //     isEnable: true),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 15),
//                           child: Text(
//                             'Business',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: GridView(
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                             gridDelegate:
//                                 const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 4,
//                               childAspectRatio: 1.0,
//                             ),
//                             children: const [
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/business/warehouse.png",
//                               //     firstText: 'WareHouse',
//                               //     isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/business/sales_return.png",
//                                   firstText: 'SalesReturn',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/business/sales_list.png",
//                                   firstText: 'SalesList',
//                                   isEnable: true),
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/business/quotation.png",
//                               //     firstText: 'Quotation',
//                               //     isEnable: true),
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/business/online_store.png",
//                               //     firstText: 'OnlineStore',
//                               //     isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/business/supplier.png",
//                                   firstText: 'Supplier',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/business/invoice.png",
//                                   firstText: 'Invoice',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/business/stock.png",
//                                   firstText: 'Stock',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/business/ledger.png",
//                                   firstText: 'Ledger',
//                                   isEnable: true),
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/business/dashboard.png",
//                               //     firstText: 'DashBoard',
//                               //     isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/business/bank.png",
//                                   firstText: 'Bank',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/business/qr-code.png",
//                                   firstText: 'PrintLable',
//                                   isEnable: true),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 15),
//                           child: Text(
//                             'What\'s New',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 150,
//                           child: PageView.builder(
//                             controller: pageController,
//                             onPageChanged: (index) {
//                               pageNo = index;
//                               setState(() {});
//                             },
//                             itemBuilder: (context, index) => AnimatedBuilder(
//                               animation: pageController,
//                               builder: (ctx, child) {
//                                 return child!;
//                               },
//                               child: Container(
//                                 margin:
//                                     const EdgeInsets.symmetric(horizontal: 40),
//                                 height: 200,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: Colors.amber,
//                                     image: const DecorationImage(
//                                       fit: BoxFit.fill,
//                                       image: AssetImage(
//                                         'assets/images/ahsan.jpg',
//                                       ),
//                                     )),
//                               ),
//                             ),
//                             itemCount: 2,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 12.0,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: List.generate(
//                             2,
//                             (index) => InkWell(
//                               onTap: () {
//                                 pageController.animateToPage(index,
//                                     duration: const Duration(milliseconds: 400),
//                                     curve: Curves.bounceInOut);
//                               },
//                               child: Container(
//                                 margin: const EdgeInsets.all(2.0),
//                                 child: Icon(
//                                   Icons.circle,
//                                   size: 8,
//                                   color: pageNo == index
//                                       ? Colors.indigoAccent
//                                       : Colors.grey.shade300,
//                                 ),
//                               ),
//                             ),
//                           ).toList(),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 15),
//                           child: Text(
//                             'Enterprise',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: GridView(
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                             gridDelegate:
//                                 const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 4,
//                               childAspectRatio: 1.0,
//                             ),
//                             children: const [
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/branch.png",
//                                   firstText: 'Branch',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/broken.png",
//                                   firstText: 'Damage',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/adjusment.png",
//                                   firstText: 'Adjusment',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/transaction.png",
//                                   firstText: 'Transaction',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData: "assets/images/enterprise/gift.png",
//                                   firstText: 'Lottery',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/loss&profit.png",
//                                   firstText: 'Loss&Profit',
//                                   isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/income.png",
//                                   firstText: 'Income',
//                                   isEnable: true),
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/enterprise/online_order.png",
//                               //     firstText: 'OnlineOrder',
//                               //     isEnable: true),
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/enterprise/user_role.png",
//                               //     firstText: 'UserRole',
//                               //     isEnable: true),
//                               // GridTileofApp(
//                               //     iconData:
//                               //         "assets/images/enterprise/backup.png",
//                               //     firstText: 'Backup',
//                               //     isEnable: true),
//                               GridTileofApp(
//                                   iconData:
//                                       "assets/images/enterprise/return.png",
//                                   firstText: 'Return',
//                                   isEnable: true),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GridTileofApp extends StatelessWidget {
//   const GridTileofApp({
//     Key? key,
//     required this.iconData,
//     required this.firstText,
//     required this.isEnable,
//   }) : super(key: key);

//   final String iconData;
//   final String firstText;
//   final bool isEnable;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 40,
//           width: 40,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(
//                 iconData,
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Text(
//           firstText,
//           style: const TextStyle(
//             fontSize: 11,
//           ),
//         )
//       ],
//     );
//   }
// }
