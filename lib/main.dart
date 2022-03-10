import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'getX',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Getx(),
    );
  }
}

class Getx extends StatelessWidget {
  const Getx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getX'),
      ),
      body: const Text('body'),
    );
  }
}
