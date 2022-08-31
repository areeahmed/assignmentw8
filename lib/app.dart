import 'package:assignmentw8/src/screens/Design_Currency.dart';
import 'package:assignmentw8/src/screens/design_list_tile.dart';
import 'package:assignmentw8/src/screens/test_field_test_krd_language.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestingTextField(),
    );
  }
}
