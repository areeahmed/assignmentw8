import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  Currency({Key? key}) : super(key: key);

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  TextEditingController moneyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            // Container(
            // child: Directionality(textDirection: TextDirection.rtl, child: TextFormField(),),
            // )
            Container(
              height: 100,
              width: 200,
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontFamily: 'PeshangBold', fontSize: 20),
                  textDirection: TextDirection.rtl,
                  controller: moneyController,
                  decoration: InputDecoration(
                    hintText: 'بڕی قەرزەکە',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
