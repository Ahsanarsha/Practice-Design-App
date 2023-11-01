import 'package:flutter/material.dart';
import 'package:practice/Screens/getApi.dart';
import 'package:practice/Screens/text_form_field.dart';
import 'package:provider/provider.dart';

class ProviderScreens extends StatefulWidget {
  static const routeName = '/PrviderScreens';
  const ProviderScreens({super.key});

  @override
  State<ProviderScreens> createState() => _ProviderScreensState();
}

class _ProviderScreensState extends State<ProviderScreens> {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: const Text(
          'Ahsan',
        ),
        actions: [
          IconButton.filled(
            onPressed: () {
              Navigator.pushNamed(context, GetScreen.routeName);
            },
            icon: const Icon(Icons.fast_forward_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${userData.name ?? ''} '),
            const SizedBox(
              height: 20,
            ),
            Text('Password: ${userData.password ?? ''}'),
          ],
        ),
      ),
    );
  }
}
