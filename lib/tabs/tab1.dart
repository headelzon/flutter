import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tab1 extends StatefulWidget {
  Tab1({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  Widget _dobryZbyszek = Image.asset('assets/images/zbyszek.png', height: 200,);
  Widget _zlyZbyszek = Image.asset('assets/images/zbyszek.png', height: 200,);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/zbyszek.png', height: 200,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text('Dobry wieczór, kochani', style: TextStyle(fontSize: 26.0)),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
