import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/controller/count_controller_with_getx.dart';
import 'package:getx/src/pages/state/with_getx.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx());
    return Scaffold(
      appBar: AppBar(title: const Text('First page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: WithGetx(),
            ),
            Expanded(
              child: WithGetx(),
            ),
          ],
        ),
      ),
    );
  }
}
