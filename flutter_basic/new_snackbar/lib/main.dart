import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onLongPress: () {
                print('text Long button');
              },
              child: Text(
                'Text Button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                print('text Short button');
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              child: Text('ElevatedButton'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton');
              },
              child: Text('OutlinedButton'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.red[50],
                side: BorderSide(
                  color: Colors.black87,
                  width: 1.0,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                print('Icon Button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.teal[200],
              ),
              label: Text('Go to home'),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.teal[200],
              ),
              label: Text('Go to NULL'),
              style: TextButton.styleFrom(
                primary: Colors.deepOrangeAccent[400],
                backgroundColor: Colors.greenAccent[100],
                onSurface: Colors.lime,
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    print('Button Bar > Text Button');
                  },
                  child: Text('Bar-Txt button'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Button Bar > Text Button');
                  },
                  child: Text('Bar-Ele button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
