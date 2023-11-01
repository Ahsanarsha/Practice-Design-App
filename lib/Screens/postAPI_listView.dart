import 'package:flutter/material.dart';
import 'package:practice/Screens/postAPIResponse.dart';

import '../Helpers/get_API.dart';
import '../Models/getGame.dart';

class PostAPIScreen extends StatefulWidget {
  static const routeName = '/PostAPIScreen';
  const PostAPIScreen({super.key});

  @override
  State<PostAPIScreen> createState() => _PostAPIScreenState();
}

class _PostAPIScreenState extends State<PostAPIScreen> {
  List<Datum> dataList = [];
  @override
  void initState() {
    super.initState();
    getAPICall();
  }

  getAPICall() async {
    var apiResponse = await getAPIForListView();
    dataList = apiResponse!.data!;
    if (dataList.isNotEmpty) {
      setState(() {
        dataList = dataList;
      });
      dataList.map((e) => print('dataList : ${e.toJson()}')).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        shadowColor: Colors.teal,
        elevation: 5,
        centerTitle: true,
        title: const Text("Post API"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: dataList.isNotEmpty
            ? ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: ListTile(
                    onTap: () => Navigator.pushNamed(
                      context,
                      PostAPIResponse.routeName,
                      arguments: dataList[index].barcode,
                    ),
                    titleAlignment: ListTileTitleAlignment.center,
                    leading: Text('${dataList[index].id!}'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Game Name: ${dataList[index].gameName!}'),
                        Text('Game no: ${dataList[index].gameNumber!}'),
                        Text('Barcode: ${dataList[index].barcode!}')
                      ],
                    ),
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
