import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:practice/Helpers/get_API.dart';
import 'package:practice/Screens/postAPI_listView.dart';

import '../Models/getAPI_DropDown.dart';

class DropDownScreen extends StatefulWidget {
  static const routeName = '/DropDownScreen';
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  List<Datum> dataList = [];

  @override
  void initState() {
    getAPICall();
    super.initState();
  }

  getAPICall() async {
    var apiResponse = await getAPIForDropDown();
    var apiList = apiResponse!.data!;
    if (apiList.isNotEmpty) {
      setState(() {
        dataList = apiList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.blueAccent,
        backgroundColor: Colors.blueGrey[300],
        title: const Text('GET API with DropDown'),
        actions: [
          IconButton.filledTonal(
            color: Colors.cyan,
            focusColor: Colors.amberAccent,
            onPressed: () {
              Navigator.pushNamed(context, PostAPIScreen.routeName);
            },
            icon: const Icon(Icons.ad_units),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Your can Select MultiOptions with Search option",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              DropDownTextField.multiSelection(
                clearOption: true,
                displayCompleteItem: true,
                isEnabled: true,
                initialValue: const ['Ahsan'],
                dropDownList: dataList
                    .where((data) =>
                        data.id != null &&
                        data.name != null) // filter out null values
                    .map((data) => DropDownValueModel(
                        name: data.name!,
                        value: data.id!
                            .toString())) // handle null values for name and id
                    .toList(),
                onChanged: (val) {
                  for (var item in val) {
                    String selectedId = item.value;
                    String selectedName = item.name;
                    print('Id: $selectedId' '   ' 'Name: $selectedName');
                    //print('Name: $selectedName');
                  }
                },
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:dropdown_textfield/dropdown_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:practice/Helpers/get_API.dart';

// import '../Models/getAPI_DropDown.dart';

// class DropDownScreen extends StatefulWidget {
//   static const routeName = '/DropDownScreen';
//   const DropDownScreen({super.key});

//   @override
//   State<DropDownScreen> createState() => _DropDownScreenState();
// }

// class _DropDownScreenState extends State<DropDownScreen> {
//   List<Datum> dataList = [];

//   FocusNode searchFocusNode = FocusNode();
//   FocusNode textFieldFocusNode = FocusNode();
//   //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   // late SingleValueDropDownController _cnt;
//   // late MultiValueDropDownController _cntMulti;

//   @override
//   void initState() {
//     getAPICall();
//     // _cnt = SingleValueDropDownController();
//     // _cntMulti = MultiValueDropDownController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     // _cnt.dispose();
//     // _cntMulti.dispose();
//     super.dispose();
//   }

//   getAPICall() async {
//     var apiResponse = await getAPIForDropDown();
//     var apiList = apiResponse!.data!;
//     if (apiList.isNotEmpty) {
//       setState(() {
//         dataList = apiList;
//       });
//     }
//     dataList.map((e) => print('dataList : ${e.toJson()}')).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 5,
//         shadowColor: Colors.blueAccent,
//         backgroundColor: Colors.blueGrey[300],
//         title: const Text('GET API with DropDown'),
//       ),
//       body: SingleChildScrollView(
//         child: Form(
//           // key: _formKey,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 const Text(
//                   "Your can Select MultiOptions with Search option",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 DropDownTextField.multiSelection(
//                   clearOption: true,
//                   //controller: _cntMulti,
//                   displayCompleteItem: true,
//                   initialValue: const [],
//                   dropDownList: dataList
//                       .map((data) => DropDownValueModel(
//                           name: data.name, value: data.id.toString()))
//                       .toList(),
//                   // dropDownList: const [
//                   //DropDownValueModel(),
//                   // DropDownValueModel(
//                   //   name: 'name2',
//                   //   value: "value2",
//                   //   // toolTipMsg:
//                   //   //     "DropDownButton is a widget that we can use to select one unique value from a set of values",
//                   // ),
//                   // DropDownValueModel(name: 'name3', value: "value3"),
//                   // DropDownValueModel(
//                   //   name: 'name4',
//                   //   value: "value4",
//                   //   // toolTipMsg:
//                   //   //     "DropDownButton is a widget that we can use to select one unique value from a set of values",
//                   // ),
//                   // DropDownValueModel(name: 'name5', value: "value5"),
//                   // DropDownValueModel(name: 'name6', value: "value6"),
//                   // DropDownValueModel(name: 'name7', value: "value7"),
//                   // DropDownValueModel(name: 'name8', value: "value8"),
//                   // ],
//                   onChanged: (val) {
//                     print(val);
//                     setState(() {});
//                   },
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton.extended(
//       //   onPressed: () {
//       //     setState(() {});
//       //   },
//       //   label: const Text("Submit"),
//       // ),
//     );
//   }
// }