import 'package:app2_init_iu_2024/home_page1.dart';
import 'package:app2_init_iu_2024/home_page2.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage1(),
    );
  }
}
