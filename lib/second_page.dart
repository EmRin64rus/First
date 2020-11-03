import 'package:flutter/material.dart';
import 'package:flutter_app/contact.dart';

void main() =>
    runApp(MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => MyTest()},
    ));

class MyTest extends StatelessWidget {
  final List<contactTest> events = [
    contactTest(
      name: 'TestName',
      testMessage: 'hello world',
      messageTime: DateTime.now().toString(),
      avatar: CircleAvatar (backgroundColor: Colors.red,).toString(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          itemBuilder: (_, index) =>
              Card(
                child: ListTile(
                  title: Text(events[index].name),
                  subtitle: Text(
                      "${events[index].testMessage} , ${events[index]
                          .messageTime}"),leading: CircleAvatar(),
                ),
              ),
          separatorBuilder: (_, __) => Divider(),
          itemCount: events.length),
    );
  }
}
