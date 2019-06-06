import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Xc Calculator',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: XcCalculator());
  }
}

class XcCalculator extends StatefulWidget {
  XcCalculator({Key key}) : super(key: key);

  _XcCalculatorState createState() => _XcCalculatorState();
}

class _XcCalculatorState extends State<XcCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xc Calculator'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '1234',
                  style: TextStyle(color: Colors.white, fontSize: 60.0),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              button('C', Color(0xffa5a5a5)),
              button('+/-', Color(0xffa5a5a5)),
              button('%', Color(0xffa5a5a5)),
              button('/', Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              button('7', Color(0xff333333)),
              button('8', Color(0xff333333)),
              button('9', const Color(0xff333333)),
              button('X', Colors.orange)
            ],
          ),
          Row(
            children: <Widget>[
              button('4', Color(0xff333333)),
              button('5', Color(0xff333333)),
              button('6', Color(0xff333333)),
              button('-', Colors.orange)
            ],
          ),
          Row(
            children: <Widget>[
              button('1', Color(0xff333333)),
              button('2', Color(0xff333333)),
              button('3', Color(0xff333333)),
              button('+', Colors.orange)
            ],
          ),
          Row(
            children: <Widget>[
              button('0', Color(0xff333333)),
              button('0', Color(0xff333333)),
              button('.', Color(0xff333333)),
              button('=', Colors.orange)
            ],
          ),
        ],
      ),
    );
  }
}

Widget button(btnVal, Color color) {
  return RaisedButton(
    child: Text(btnVal),
    color: color,
    onPressed: () {});
}
