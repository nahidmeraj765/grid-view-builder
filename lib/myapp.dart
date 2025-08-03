import 'package:flutter/material.dart';
import 'package:flutter_application_5/home.dart';
import 'package:flutter_application_5/home_builder.dart';
import 'package:flutter_application_5/home_stack.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeStack(),
    );
  }
}
