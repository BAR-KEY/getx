import 'package:flutter/material.dart';
import 'package:getx/src/pages/normal/first.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('라우트 관리 홈'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const FirstPage());
                },
                child: const Text('일반적인 라우트')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/first");
                },
                child: const Text('named 라우트')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/next", arguments: User(name: '이름', age: 32));
                },
                child: const Text('Arguments 전달')),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SimpleStateManagePage());
                },
                child: const Text('단순상태관리')),
          ]),
        ));
  }
}

class User {
  late String name;
  late int age;
  User({required this.name, age});
}
