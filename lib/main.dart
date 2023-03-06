import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/text_learn.dart';

import '101/demo.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Deneme',
      debugShowCheckedModeBanner: false,
      home: const DemoApp(),
      theme: ThemeData.light(),
    );
  }
}
