import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Text(
      "Login page",
      style: TextStyle(
          fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold),
    )));
  }
}
