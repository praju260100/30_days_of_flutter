//using multiple types of datatypes//////
import 'package:flutter/material.dart';

class variable extends StatelessWidget {
  const variable({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'code with tea';
    bool ischecked = true;
    double pi = 3.14;
    return MaterialApp(
        home: Material(
            child: Center(
                child: Container(
                    child: Text(
                        "welcome in$days days in flutter $name is passed$ischecked value is $pi")))));
  }
}
