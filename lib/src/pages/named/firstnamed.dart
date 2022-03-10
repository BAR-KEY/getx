import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First named page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/second');
                  // Get.offNamed('/second');
                  // 그 전 페이지를 지우고 넘어갈 수 있다.
                },
                child: const Text('다음페이지 이동'))
          ],
        ),
      ),
    );
  }
}
