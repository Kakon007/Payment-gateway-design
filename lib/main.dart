import 'package:flutter/material.dart';
import 'package:payment_upgrade_flutter/data_List.dart';
import 'package:payment_upgrade_flutter/limite_reached.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LimitReached(),
      //home: DataList(),
    );
  }
}
