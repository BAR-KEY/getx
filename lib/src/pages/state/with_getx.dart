import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/controller/count_controller_with_getx.dart';

class WithGetx extends StatelessWidget {
  const WithGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Getx', style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetx>(
            builder: (controller) {
              return Text('$CountControllerWithGetx',
                  style: const TextStyle(fontSize: 50));
            },
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithGetx>().increase();
              },
              child: const Text(
                '+',
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
