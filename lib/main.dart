import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Stonoga App',
        home: HomeScreen(),
        theme: CupertinoThemeData(primaryColor: Colors.white));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Yebac PiS'),
        ),
        child: Container(
          child: Center(
            child: Content()
          ),
        ));
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: () {
          // TODO: do something in here
        },
        child: Text(
          'Daj wycisk skurwysynom!',
          style: TextStyle(color: Colors.blueAccent),
        ),
        color: CupertinoColors.extraLightBackgroundGray
    );
  }
}
