import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            MyTheme.darkBluishColor,
                          ),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )),
                      child: "Buy".text.make())
                  .wh(100, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
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
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .make(),
                      Text(
                        catalog.desc,
                        style: Theme.of(context).textTheme.caption,
                        textScaleFactor: 1.25,
                      ),
                      10.heightBox,
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Lorem anim quis quis mollit commodo tempor. Nisi aliqua irure laboris aute exercitation cillum sit officia culpa magna mollit id adipisicing labore.",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      )
                    ],
                  ).py64(),
                ),
              ))
            ],
          ),
        ));
  }
}
