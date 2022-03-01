import 'package:flutter/material.dart';
import 'package:flutter_tasks_app/gridview/crads_grid_view.dart';
import 'package:flutter_tasks_app/gridview/shopping_crat_module.dart';

void main() {
  runApp(const MyApp());
}
List<ShoppingCartModule> items = [
ShoppingCartModule("title1", 200, false,description: "wow deal",
    poster_path: "http://images.amazon.com/images/P/0596004613.01._PE30_PI_SCMZZZZZZZ_.jpg"),
  ShoppingCartModule("title2", 300, false,description: "must buy",poster_path: "http://images.amazon.com/images/P/B00006FDRB.01._PE30_PI_SCMZZZZZZZ_.jpg"),
  ShoppingCartModule("title3", 500, true,description: "every home",poster_path: "http://images.amazon.com/images/P/0596004605.01._PE50_PI_SCMZZZZZZZ_.jpg"),
  ShoppingCartModule("title4", 900, false,poster_path: "http://images.amazon.com/images/P/0596004605.01._SCMZZZZZZZ_.jpg"),
  ShoppingCartModule("title5", 220, true),
  ShoppingCartModule("title6", 750, false),
  ShoppingCartModule("title1", 200, false),
  ShoppingCartModule("title2", 300, false),
  ShoppingCartModule("title3", 500, true),
  ShoppingCartModule("title4", 900, false),
  ShoppingCartModule("title5", 220, true),
  ShoppingCartModule("title6", 750, false),
  ShoppingCartModule("title1", 200, false),
  ShoppingCartModule("title2", 300, false),
  ShoppingCartModule("title3", 500, true),
  ShoppingCartModule("title4", 900, false),
  ShoppingCartModule("title5", 220, true),
  ShoppingCartModule("title6", 750, false),
];
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
    ),
    home: Scaffold(
    body: CardsGridView(items)
    ,
    ));
  }
}
