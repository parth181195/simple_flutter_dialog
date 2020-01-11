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
            isScrollable: true,
            child: Text(
                'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem'),
            actions: [
              FlatButton(
                onPressed: () {
                  openDialog();
                },
                child: Text('open'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('exit'),
              )
            ],
            dialogTitle: Text('My Simple Title'),
            headerImage: NetworkImage('https://via.placeholder.com/150'))
        .show(context);
  }
}
