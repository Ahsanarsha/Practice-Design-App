import 'package:flutter/material.dart';
import 'package:practice/Screens/text_form_field.dart';

class GridViewScreen extends StatelessWidget {
  static const routeName = '/GridViewScreen';
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('GridView'),
        actions: [
          IconButton(
            icon: const Icon(Icons.fast_forward),
            onPressed: () {
              Navigator.pushNamed(context, TextFieldScreen.routeName);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 5,
          itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                      const Text(
                        'Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_month_outlined),
                      Text('10/5/2023')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
