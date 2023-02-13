import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widget/Home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widget/Home_widgets/catalog_list.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class homedetailpage extends StatelessWidget {
  final Item catalog;
  const homedetailpage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              addtocart(
                catalog: catalog,
              ).wh(150, 50)
            ],
          ).pOnly(right: 8.0),
        ),
        body: SafeArea(
            bottom: false,
            child: Column(children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                      height: 30.0,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                          color: context.cardColor,
                          width: context.screenWidth,
                          child: Column(children: [
                            catalog.name.text.xl4
                                .color(MyTheme.darkBluishColor)
                                .bold
                                .make(),
                            catalog.desc.text
                                .textStyle(context.captionStyle)
                                .xl
                                .make(),
                            10.heightBox,
                            "Et cum quas nisi exercitationem illum vel. Reprehenderit ea maxime nam. Fugit nisi laborum aliquid cupiditate unde voluptas. Modi et velit est rerum non. Placeat blanditiis itaque. Aut iusto odit optio quia ab est deleniti sed."
                                .text
                                .textStyle(context.captionStyle)
                                .make()
                          ])).py64()))
            ])));
  }

  addtocart({required Item catalog}) {}
}
