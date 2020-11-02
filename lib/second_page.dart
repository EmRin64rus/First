import 'package:flutter/material.dart';


class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<String> events = [
    'events 1',
    'events 2',
    'events 3',
    'events 4',
    'events 5',
    'events 6',
    'events 7',
    'events 8',
    'events 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: events
              .map((e) => Text(
            e,
            style: TextStyle(fontSize: 50, color: Colors.green[600]),
          ))
              .toList()),
    );
  }
}
