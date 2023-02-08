import 'package:flutter/material.dart';
import 'package:flutter_catalog/widget/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  final int days = 30;
  final String name = 'code with tea';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
              child: Text("welcome to the $days days in flutter with $name")),
        ),
        drawer: mydrawer());
  }
}
