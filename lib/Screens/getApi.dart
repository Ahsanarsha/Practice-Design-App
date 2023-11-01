import 'package:flutter/material.dart';
import 'package:practice/Helpers/get_API.dart';
import 'package:practice/Provider/apiProvider.dart';
import 'package:provider/provider.dart';

import 'getApi_dropDown.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

class GetScreen extends StatefulWidget {
  static const routeName = '/GetScreen';
  const GetScreen({super.key});

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {
//  List<Datum> dataList = [];

  @override
  void initState() {
    super.initState();

    apiCall();
  }

  apiCall() async {
    var apiResponse = await fetchDataFromAPI();
    var apiList = apiResponse!.data!;
    if (apiList.isNotEmpty) {
      // ignore: use_build_context_synchronously
      Provider.of<APIProvider>(context, listen: false).dataListSetter(apiList);
    }
    //dataList.map((e) => print('dataList : ${e.toJson()}')).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: const Text('Get API'),
        actions: [
          IconButton.filledTonal(
              highlightColor: const Color.fromARGB(255, 129, 187, 54),
              color: Colors.amber,
              onPressed: () {
                Navigator.pushNamed(context, DropDownScreen.routeName);
              },
              icon: const Icon(Icons.next_plan_outlined))
        ],
      ),
      body: Consumer<APIProvider>(
        builder: (context, apiProvider, child) {
          return apiProvider.dataListGetter.isNotEmpty
              ? ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: apiProvider.dataListGetter.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        index == 0
                            ? const SizedBox(height: 20)
                            : const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.amber,
                            child: ListTile(
                              leading: Text('${index + 1})'),
                              title: Text(
                                  'Product: ${apiProvider.dataListGetter[index].product!}'),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Sku: ${apiProvider.dataListGetter[index].sku!}'),
                                  Text(
                                      'Unit Price: ${double.parse(apiProvider.dataListGetter[index].unitPrice!).toStringAsFixed(2)}'),
                                  Text(
                                      "Total Sold: ${double.parse(apiProvider.dataListGetter[index].totalSold!).toStringAsFixed(2)}")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}


//Selector<APIProvider, List<Datum>>(
      //   selector: (_, provider) => provider.dataList,
      //   builder: (context, dataList, _) {
      //     return dataList.isNotEmpty
      //         ? ListView.separated(
      //             separatorBuilder: (context, index) => const Divider(),
      //             itemCount: dataList.length,
      //             itemBuilder: (BuildContext context, int index) {
      //               return Column(
      //                 children: [
      //                   index == 0
      //                       ? const SizedBox(height: 20)
      //                       : const SizedBox(),
      //                   Padding(
      //                     padding: const EdgeInsets.symmetric(
      //                       horizontal: 10,
      //                     ),
      //                     child: Card(
      //                       elevation: 10,
      //                       shadowColor: Colors.amber,
      //                       child: ListTile(
      //                         leading: Text('${index + 1})'),
      //                         title:
      //                             Text('Product: ${dataList[index].product!}'),
      //                         subtitle: Column(
      //                           mainAxisAlignment: MainAxisAlignment.start,
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Text('Sku: ${dataList[index].sku!}'),
      //                             Text(
      //                                 'Unit Price: ${dataList[index].unitPrice!}'),
      //                             Text(
      //                                 "Total Sold: ${dataList[index].totalSold!}")
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               );
      //             },
      //           )
      //         : const Center(
      //             child: CircularProgressIndicator(),
      //           );
      //   },
      // ),