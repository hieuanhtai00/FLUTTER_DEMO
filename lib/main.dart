import 'package:flutter/material.dart';

import 'body_calculator.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This my calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CALCULATOR'),
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: const BodyCalculator(),
      ),
    );
  }
}
