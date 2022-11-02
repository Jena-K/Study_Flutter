import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState is called');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose is called');
  }

  @override
  Widget build(BuildContext context) {
    print('build is called');
    return Scaffold(
        appBar: AppBar(
          title: Text('ScreenA'),
        ),
        body: Center(
          child: Text(
            'ScreenA',
            style: TextStyle(fontSize: 24.0),
          ),
        ));
  }
}
