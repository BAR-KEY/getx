import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/home.dart';
import 'package:getx/src/pages/next.dart';
import 'package:getx/src/pages/named/firstnamed.dart';
import 'package:getx/src/pages/named/secondnamed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'getX',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Home(),
      getPages: [
        GetPage(
            name: "/", page: () => const Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => const FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => const SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => const NextPage(),
            transition: Transition.zoom)
      ],
    );
  }
}
