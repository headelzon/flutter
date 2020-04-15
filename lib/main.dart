import 'package:flutter/material.dart';

import 'tabs/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'My App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: TabsHome(),
        theme: ThemeData(primaryColor: Colors.blue));
  }
}

class TabsHome extends StatefulWidget {
  TabsHome({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TabsHomeState();
}

class _TabsHomeState extends State<TabsHome> {
  int _selected = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Tab1(),
    Tab2(),
    Tab3()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stonoga App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            title: Text('Tab 1')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              title: Text('Tab 2')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.time_to_leave),
              title: Text('Tab 3')
          ),
        ],
        currentIndex: _selected,
        selectedItemColor: Colors.blue[800],
        onTap: _onTabTapped,
      ),
    );
  }
}
