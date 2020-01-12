import 'package:flutter/material.dart';
import 'package:simple_flutter_dialog/simple_flutter_dialog.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple flutter dialog app'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('dialog'),
          onPressed: () {
            openDialog();
          },
        ),
      ),
    );
  }

  openDialog() {
    return SimpleFlutterDialog(
      height: 200,
      width: MediaQuery.of(context).size.width - 20,
      child: Container(
        height: 200,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'data',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'data',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'data',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    ).show(context);
  }
}
