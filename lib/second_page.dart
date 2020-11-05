import 'package:flutter/material.dart';
import 'package:flutter_app/contact.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => MyTest()},
    ));

class MyTest extends StatelessWidget {
  final List<contactTest> events = [
    contactTest(
        name: 'TestName',
        testMessage: 'hello world',
        messageTime: DateTime.now().toString(),
        avatar:  CircleAvatar(
            backgroundImage: NetworkImage(
                "https://sun9-18.userapi.com/c849424/v849424976/d8416/8Hfpgcy60GY.jpg"),
          ),
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
                  title: Text(
                    events[index].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                      "${events[index].testMessage} , ${events[index].messageTime}"),
                  leading:ConstrainedBox(constraints: BoxConstraints (maxWidth: 100),child: events[index].avatar,) ,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/page',
                    );
                  },
                ),
              ),
          separatorBuilder: (_, __) => Divider(),
          itemCount: events.length),
    );
  }
}
