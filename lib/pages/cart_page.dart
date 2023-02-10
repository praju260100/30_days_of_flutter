import 'package:flutter/cupertino.dart';
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
        body: Column(
          children: [cartlist().p32().expand(), Divider(), cardtotal()],
        ));
  }
}

class cardtotal extends StatelessWidget {
  const cardtotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not supported yet".text.make()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "Buy".text.white.make())
              .w32(context),
        ],
      ),
    );
  }
}

class cartlist extends StatefulWidget {
  const cartlist({super.key});

  @override
  State<cartlist> createState() => _cartlistState();
}

class _cartlistState extends State<cartlist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: "Item1".text.make(),
      ),
    );
  }
}
