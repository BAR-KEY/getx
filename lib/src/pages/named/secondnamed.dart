import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second named Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('뒤로 이동')),
            ElevatedButton(
                onPressed: () {
                  Get.offAll(() => const Home());
                  // 회원가입후 홈으로 처리하면 용이하다!
                },
                child: const Text('홈으로 이동'))
          ],
        ),
      ),
    );
  }
}
