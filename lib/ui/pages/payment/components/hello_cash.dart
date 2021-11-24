import 'package:flutter/material.dart';

class HelloCash extends StatefulWidget {
  const HelloCash({Key? key}) : super(key: key);

  @override
  State<HelloCash> createState() => _HelloCashState();
}

class _HelloCashState extends State<HelloCash> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text("Hello-Cash")
    ],);
  }
}