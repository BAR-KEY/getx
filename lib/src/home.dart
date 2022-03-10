import 'package:flutter/material.dart';
import 'package:getx/src/pages/normal/first.dart';
import 'package:get/get.dart';

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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const FirstPage()));
                },
                child: const Text('일반적인 라우트')),
            ElevatedButton(
                onPressed: () {
                  Get.to(const FirstPage());
                },
                child: const Text('getX')),
          ]),
        ));
  }
}