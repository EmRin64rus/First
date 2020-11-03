import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/contact.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {'/': (context) => MyTest()},
));

class MyTest extends StatelessWidget {
  final List<Contact> events = [
    Contact(
      name: 'TestName',
      testMessage: 'hello world',
      messageTime: DateTime.now().toString(),
      avatar: Icon(
        Icons.favorite,
        color: Colors.red,
      ).toString(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
      //  separatorBuilder: (_, __) => Divider(
        //  color: Colors.blue,
        ),
       // itemCount: events.length,
      ),
   );
  }
}
