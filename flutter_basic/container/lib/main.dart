import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              // width: 200,
              color: Colors.red[200],
              child: Text('Container 1'),
              padding: EdgeInsets.all(20),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 200,
              // width: 300,
              color: Colors.green[300],
              child: Text('Container 2'),
              padding: EdgeInsets.all(20),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              height: 200,
              // width: 200,
              color: Colors.purple[100],
              child: Text('Container 3'),
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
