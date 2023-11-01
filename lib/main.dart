import 'package:flutter/material.dart';
import 'package:practice/Provider/apiProvider.dart';
import 'package:practice/Screens/Maan.dart';
import 'package:practice/Screens/getApi.dart';
import 'package:practice/Screens/gridView.dart';
import 'package:practice/Screens/home.dart';
import 'package:practice/Screens/homeClass.dart';
import 'package:practice/Screens/package.dart';
import 'package:practice/Screens/postAPIResponse.dart';
import 'package:practice/Screens/ui_test.dart';
import 'package:provider/provider.dart';

import 'Screens/fetch_fields_by_provider.dart';
import 'Screens/getApi_dropDown.dart';
import 'Screens/postAPI_listView.dart';
import 'Screens/practice.dart';
import 'Screens/text_form_field.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserData(), // wrap UserData in ChangeNotifierProvider
        ),
        ChangeNotifierProvider<APIProvider>(
          create: (_) => APIProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Practice App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 124, 109, 63)),
          useMaterial3: true,
        ),
        routes: {
          Practice.routeName: (context) => const Practice(),
          GridViewScreen.routeName: (context) => const GridViewScreen(),
          TextFieldScreen.routeName: (context) => const TextFieldScreen(),
          ProviderScreens.routeName: (context) => const ProviderScreens(),
          GetScreen.routeName: (context) => const GetScreen(),
          DropDownScreen.routeName: (context) => const DropDownScreen(),
          PostAPIScreen.routeName: (context) => const PostAPIScreen(),
          PostAPIResponse.routeName: (context) => const PostAPIResponse(),
          // BottomBar.routeName: (context) => const BottomBar(),
          // Home.routeName: (context) => const Home(),
          Maan.routeName: (context) => const Maan(),
          HomeClass.routeName: (context) => const HomeClass(),
          // PackageScreen.routeName: (context) => const PackageScreen(),
        },
        home: const Practice(),
      ),
    );
  }
}
