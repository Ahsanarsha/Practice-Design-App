import 'dart:convert';

import 'package:http/http.dart' as http;

Future<http.Response> checkBarcode(String term) async {
  final response = await http.post(
    Uri.parse(
        'https://app.theposgeniee.com/api/v2/lottery/lottery-games?location_id=1'),
    headers: {
      'Authorization': 'Bearer 3134|VQu8zQVwrKG07YqvmjN4bi1HosEblPc2wBXPXFZQ',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'term': term,
    }),
  );

  print('response body : ${response.body}');
  if (response.statusCode == 200) {
    // If the server returns a 201 Created status code,
    // return the id of the newly created user
    return response;
  } else {
    // If the server did not return a 201 Created status code,
    // throw an exception with the error message
    throw Exception('Failed to create user: ${response.body}');
  }
}

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// Future<String?> checkBarcode(String term) async {
//   try {
//     final response = await http.post(
//       Uri.parse(
//           'https://app.theposgeniee.com/api/v2/lottery/lottery-games?location_id=1'),
//       headers: {
//         'Authorization': 'Bearer 3134|VQu8zQVwrKG07YqvmjN4bi1HosEblPc2wBXPXFZQ',
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode({
//         'term': term,
//       }),
//     );
//     print('response body : ${response.body}');
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body)['data'];
//     } else if (response.statusCode == 422) {
//       return null; //agar barcode empty hai to null return kren
//     } else {
//       throw Exception('Failed to create user: ${response.body}');
//     }
//   } catch (error) {
//     throw Exception('Failed to create user: $error');
//   }
// }
