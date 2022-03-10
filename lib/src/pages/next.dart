import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NextPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '${(Get.arguments as User).name} : ${(Get.arguments as User).age.toString()}'),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('뒤로 이동'))
          ],
        ),
      ),
    );
  }
}
