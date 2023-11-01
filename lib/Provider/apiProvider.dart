// // import 'package:flutter/material.dart';
// // import 'package:practice/Helpers/get_API.dart';

// // import '../Models/test_api_models.dart';

// // class APIProvider with ChangeNotifier {
// //   List<Entry> dataList = [];

// //   APIProvider() {
// //     apiCall();
// //   }

// //   apiCall() async {
// //     var apiResponse = await fetchDataFromAPI();
// //     dataList = apiResponse!.entries!;
// //     notifyListeners();
// //   }
// // }

import 'package:flutter/material.dart';

import '../Models/test_api_models.dart';

class APIProvider with ChangeNotifier {
  List<Datum> _dataList = [];

  List<Datum> get dataListGetter => _dataList;

  dataListSetter(List<Datum> data) {
    _dataList = data;
    _dataList.map((e) => print('dataList : ${e.toJson()}')).toList();
    notifyListeners();
  }

  // apiCall() async {
  //   var apiResponse = await fetchDataFromAPI();
  //   dataList = apiResponse!.data!;
  // }

  // apiCall() async {
  //   var apiResponse = await fetchDataFromAPI();
  //   var apiList = apiResponse!.data!;
  //   if (apiList.isNotEmpty) {
  //     dataList = apiList;
  //   }
  //   dataList.map((e) => print('dataList : ${e.toJson()}')).toList();
  // }
}
