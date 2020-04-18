import 'package:Stonoga_App/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'My App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        home: HomeWidget(),
        theme: ThemeData(primaryColor: Colors.blue));
  }
}
