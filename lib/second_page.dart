import 'package:flutter/material.dart';
import 'package:flutter_app/contact.dart';

class MyTest extends StatelessWidget {
  final List<ContactTest> events = [
    ContactTest(
      name: 'TestName',
      testMessage: 'hello world',
      messageTime: DateTime.now().toString(),
      avatarUrl:
          "https://sun9-18.userapi.com/c849424/v849424976/d8416/8Hfpgcy60GY.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Contact List'),
            IconButton(icon: Icon(Icons.add), onPressed: () {})
          ],
        ),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => Card(
          child: ListTile(
            contentPadding: ListTileTheme.of(context).contentPadding,
            title: Text(
              events[index].name,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              "${events[index].testMessage} , ${events[index].messageTime}",
            ),
            leading: AspectRatio(
              aspectRatio: 1,
              child: ClipOval(
                child: Image.network(
                  events[index].avatarUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/page',
              );
            },
          ),
        ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: events.length,
      ),
    );
  }
}
