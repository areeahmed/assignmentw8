import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TestingTextField extends StatefulWidget {
  TestingTextField({Key? key}) : super(key: key);

  @override
  State<TestingTextField> createState() => _TestingTextFieldState();
}

class _TestingTextFieldState extends State<TestingTextField> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextField(),
      ),
    );
  }
}
