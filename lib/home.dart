import 'package:flutter/material.dart';
import 'tabs/index.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int selected = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[Tab1(), Tab2(), Tab4()];
  static List<String> _titleOptions = ['Stonoga', 'Ranking', 'More'];

  void _onTabTapped(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleOptions.elementAt(selected)),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(),
      body: Center(
        child: _widgetOptions.elementAt(selected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.face), title: Text('Stonoga')),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot), title: Text('Ranking')),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), title: Text('More')),
        ],
        currentIndex: selected,
        selectedItemColor: Colors.blue,
        onTap: _onTabTapped,
      ),
    );
  }
}
