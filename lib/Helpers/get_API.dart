// import 'package:http/http.dart' as http;
// import 'package:practice/Models/test_api_models.dart';

// Future<TestAPiModel?> fetchDataFromAPI() async {
//   try {
//     var response = await http.get(Uri.parse(
//         'https://app.theposgeniee.com/api/v2/product-stock-report?page=1'));
//     print(response.statusCode);
//     if (response.statusCode == 200) {
//       print(response.body);
//       return testAPiModelFromJson(response.body);
//     } else {
//       throw Exception('Failed to load data from API');
//     }
//   } catch (e) {
//     print(e);
//   }
//   return null; // null ko return kare
// }

import 'package:http/http.dart' as http;
import 'package:practice/Models/getGame.dart';
import 'package:practice/Models/test_api_models.dart';

import '../Models/getAPI_DropDown.dart';

Future<TestAPiModel?> fetchDataFromAPI() async {
  try {
    var headers = {
      'Authorization': 'Bearer 1102|jjlCY00zgZJ1vSrPDQODZ5pL5qGndOamdxdMa4XY'
    }; // add token to headers
    var url = 'https://app.theposgeniee.com/api/v2/product-stock-report?page=1';
    var response = await http.get(Uri.parse(url), headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      return testAPiModelFromJson(response.body);
    } else {
      throw Exception('Failed to load data from API');
    }
  } catch (e) {
    print(e);
  }
  return null;
}

Future<GetDropDown?> getAPIForDropDown() async {
  try {
    var headers = {
      'Authorization': 'Bearer 3539|ah3Dz6hNrSZDa3n1EgHwgqYfPmHs4jhG2itwkarg'
    }; // add token to headers
    var url = 'https://app.theposgeniee.com/api/v2/gas-category?location_id=1';
    var response = await http.get(Uri.parse(url), headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      return getDropDownFromJson(response.body);
    } else {
      throw Exception('Failed to load data from API');
    }
  } catch (e) {
    print(e);
  }
  return null;
}

Future<GetGame?> getAPIForListView() async {
  try {
    var headers = {
      'Authorization': 'Bearer 3134|VQu8zQVwrKG07YqvmjN4bi1HosEblPc2wBXPXFZQ'
    }; // add token to headers
    var url =
        'https://app.theposgeniee.com/api/v2/lottery?location_id=1&page=1&type=get';
    var response = await http.get(Uri.parse(url), headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      return getGameFromJson(response.body);
    } else {
      throw Exception('Failed to load data from API');
    }
  } catch (e) {
    print(e);
  }
  return null;
}
