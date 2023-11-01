import 'package:flutter/material.dart';
import 'package:practice/Screens/gridView.dart';

class Practice extends StatelessWidget {
  static const routeName = '/Practice';
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> myCards = [
      'Andriod',
      'Flutter',
      'IOS',
      'Java',
      'Python'
    ];

    final List<String> mainTitle = [
      'Andriod Tutorial',
      'Flutter Tutorial',
      'IOS Tutorial',
      'Java Tutorial',
      'Python Tutorial'
    ];

    final List<Color?> leadingColor = [
      Colors.purple,
      Colors.green[600],
      Colors.pink[800],
      Colors.pink,
      Colors.pink
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Ahsan'),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushNamed(context, GridViewScreen.routeName);
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: myCards.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 07, bottom: 10),
                  child: Text(
                    myCards[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  elevation: 7,
                  color: Colors.white,
                  child: ListTile(
                    leading: SizedBox(
                      width: 60,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          color: leadingColor[index],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    title: Text(
                      mainTitle[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 15,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'HanTH',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.black38,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '10/5/2023',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
