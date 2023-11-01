// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:practice/Helpers/get_API.dart';
// import 'package:practice/Helpers/postAPI.dart';

// import '../Models/postAPI.dart';

// class PostAPIResponse extends StatefulWidget {
//   static const routeName = '/PostAPIResponse';
//   const PostAPIResponse({super.key});

//   @override
//   State<PostAPIResponse> createState() => _PostAPIResponseState();
// }

// class _PostAPIResponseState extends State<PostAPIResponse> {
//   List dataList = [];
//   bool isLoading = false;
//   final TextEditingController barcodeController = TextEditingController();

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(milliseconds: 100), () {
//       barcodeController.text =
//           ModalRoute.of(context)!.settings.arguments as String;
//     });
//   }

//   Future<void> loadData() async {
//     var apiResponse = await checkBarcode(barcodeController.text);
//     setState(() {
//       dataList.addAll(jsonDecode(apiResponse.body)['data']['data']);
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: CupertinoColors.opaqueSeparator,
//         elevation: 7,
//         centerTitle: true,
//         scrolledUnderElevation: BorderSide.strokeAlignInside,
//         title: const Text('PostAPIResponse'),
//       ),
//       body: Column(
//         children: [
//           Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: TextFormField(
//                 controller: barcodeController,
//                 decoration: const InputDecoration(
//                   labelText: 'Barcode',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               if (_formKey.currentState!.validate()) {
//                 setState(() {
//                   isLoading = true;
//                 });
//                 loadData();
//               }
//             },
//             child: const Text('Press Me'),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           isLoading
//               ? const SizedBox(
//                   height: 25,
//                   width: 25,
//                   child: CircularProgressIndicator(),
//                 )
//               : Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       dataList.isNotEmpty
//                           ? Text(
//                               'Game Name: ${dataList.first['game_name']}',
//                             )
//                           : const Text('Game Name:'),
//                       const Text(
//                         'Game No: ',
//                       ),
//                       const Text(
//                         'Barcode: ',
//                       ),
//                     ],
//                   ),
//                 ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:practice/Helpers/get_API.dart';
// import 'package:practice/Helpers/postAPI.dart';

// class PostAPIResponse extends StatefulWidget {
//   static const routeName = '/PostAPIResponse';
//   const PostAPIResponse({super.key});

//   @override
//   State<PostAPIResponse> createState() => _PostAPIResponseState();
// }

// class _PostAPIResponseState extends State<PostAPIResponse> {
//   List dataList = [];
//   final TextEditingController barcodeController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   bool isLoadingData = false;

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(milliseconds: 100), () {
//       barcodeController.text =
//           ModalRoute.of(context)!.settings.arguments as String;
//     });
//   }

//   Future<void> loadData() async {
//     setState(() {
//       isLoadingData = true;
//       dataList.clear();
//     });
//     var apiResponse = await checkBarcode(barcodeController.text);
//     setState(() {
//       dataList.addAll(jsonDecode(apiResponse.body)['data']['data']);
//       isLoadingData = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: CupertinoColors.opaqueSeparator,
//         elevation: 7,
//         centerTitle: true,
//         scrolledUnderElevation: BorderSide.strokeAlignInside,
//         title: const Text('PostAPIResponse'),
//       ),
//       body: Column(
//         children: [
//           Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: TextFormField(
//                 controller: barcodeController,
//                 decoration: const InputDecoration(
//                   labelText: 'Barcode',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               if (_formKey.currentState!.validate()) {
//                 loadData();
//               }
//             },
//             child: isLoadingData
//                 ? const CircularProgressIndicator()
//                 : const Text('Press Me'),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           if (dataList == null || dataList.isEmpty)
//             const Text('No Data Found.')
//           else
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text('Game Name: ${dataList.first['game_name']}'),
//                   Text('Game No: ${dataList.first['game_no']}'),
//                   Text('Barcode: ${dataList.first['barcode']}'),
//                 ],
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/Helpers/postAPI.dart';
import 'package:practice/Screens/homeClass.dart';
import 'package:practice/Screens/ui_test.dart';

class PostAPIResponse extends StatefulWidget {
  static const routeName = '/PostAPIResponse';
  const PostAPIResponse({super.key});

  @override
  State<PostAPIResponse> createState() => _PostAPIResponseState();
}

class _PostAPIResponseState extends State<PostAPIResponse> {
  List dataList = [];
  final TextEditingController barcodeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoadingData = false;
  String errorText = '';

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      barcodeController.text =
          ModalRoute.of(context)?.settings.arguments! as String;
    });

    // Add listener to clear error message on barcode input change
    barcodeController.addListener(() {
      if (errorText.isNotEmpty) {
        setState(() {
          errorText = '';
        });
      }
    });
  }

  Future<void> loadData() async {
    setState(() {
      isLoadingData = true;
      dataList.clear();
    });
    var apiResponse = await checkBarcode(barcodeController.text);
    setState(() {
      dataList.addAll(jsonDecode(apiResponse.body)['data']['data']);
      isLoadingData = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.opaqueSeparator,
        elevation: 7,
        centerTitle: true,
        scrolledUnderElevation: BorderSide.strokeAlignInside,
        title: const Text('PostAPIResponse'),
        actions: [
          IconButton.filledTonal(
              onPressed: () {
                Navigator.pushNamed(context, HomeClass.routeName);
              },
              icon: const Icon(Icons.add_reaction))
        ],
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: barcodeController,
                decoration: const InputDecoration(
                  labelText: 'Barcode',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a barcode';
                  } else if (int.tryParse(value) == null) {
                    return 'Incorrect barcode format';
                  }
                  return null;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  errorText = '';
                });
                loadData();
              } else {
                setState(() {
                  errorText = 'Please correct the errors';
                });
              }
            },
            child: const Text('Press Me'),
          ),
          if (isLoadingData)
            const Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Loading Data...'),
                ],
              ),
            ),
          // ignore: unnecessary_null_comparison
          if (dataList == null || dataList.isEmpty)
            Center(
              child: errorText.isNotEmpty
                  ? Text(
                      errorText,
                      style: const TextStyle(color: Colors.red),
                    )
                  : const Text('No Data Found.'),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text('Game Name: ${dataList.first['game_name']}'),
                  Text('Game No: ${dataList.first['game_number']}'),
                  Text('Barcode: ${dataList.first['barcode']}'),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
