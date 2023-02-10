import 'package:flutter/material.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent, title: "cart".text.make()),
    );
  }
}
