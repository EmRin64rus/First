import 'package:flutter_app/contact.dart';
import 'package:flutter/material.dart';


void main() =>
    runApp(MaterialApp(
      initialRoute: '/second',
      routes: {'/': (context) => TestMessage()},
    ));

class TestMessage extends StatelessWidget {
  final List<contactTest> events =

  [

    contactTest(
      name: 'Test Name',
    )

  ]
;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Name'),

      ),
    );
  }
}
