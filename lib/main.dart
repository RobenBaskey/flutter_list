import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_list/ItemModel.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ItemModel> items = [
    ItemModel(Icons.account_circle, "Account", "This is account"),
    ItemModel(Icons.print, "Print", "This is print"),
    ItemModel(Icons.message, "Message", "This is messages"),
    ItemModel(Icons.save, "Memory", "This is memory"),
    ItemModel(Icons.web_asset, "Asset", "This is asset"),
    ItemModel(Icons.account_circle, "Account", "This is account"),
    ItemModel(Icons.account_circle, "Account", "This is account"),
    ItemModel(Icons.print, "Print", "This is print"),
    ItemModel(Icons.message, "Message", "This is messages"),
    ItemModel(Icons.save, "Memory", "This is memory"),
    ItemModel(Icons.web_asset, "Asset", "This is asset"),
    ItemModel(Icons.account_circle, "Account", "This is account"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("ListView Practice"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: items.map((item) {
              return Card(
                elevation: 3,
                child: ListTile(
                  leading: Icon(item.icon),
                  title: Text(item.title),
                  subtitle: Text(item.subTitle),
                  onTap: () {
                    print(item.title);
                    Fluttertoast.showToast(
                      msg: item.title,
                      textColor: Colors.black,
                      backgroundColor: Colors.red,
                      gravity: ToastGravity.BOTTOM,
                      toastLength: Toast.LENGTH_SHORT
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
