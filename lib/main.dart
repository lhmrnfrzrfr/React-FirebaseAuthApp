import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App Example'),
            backgroundColor: Colors.deepOrange,
          ),
          body:  Column(
              children: <Widget>[
                Image.network('https://www.petanikode.com/img/flutter/flutter.png'),
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
                ),
                Text('by lhmrnfrzrfr'),
                Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Deliver features faster', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: const FlutterLogo(),
                    ),
                  ),
                ],
              )
            ]
          )
      ),
    );
  }
}