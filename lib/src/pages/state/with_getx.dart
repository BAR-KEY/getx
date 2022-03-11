import 'package:flutter/material.dart';

class WithGetx extends StatelessWidget {
  const WithGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Getx', style: TextStyle(fontSize: 30)),
          const Text('0', style: TextStyle(fontSize: 50)),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                '+',
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
