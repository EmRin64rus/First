import 'package:flutter_app/m_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyBody(),
        '/second': (context) => MyTest() ,
        '/page': (context) => TestMessage () ,
      },
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
    ));

class MyBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sharikov Message'),
        ),
        body: Builder(builder: (context) {
          return Center(
              child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: (Text(
                    'Sharikov Message вход',
                    style: TextStyle(fontSize: 40, color: Colors.blue[200]),
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: 270,
                  child: (TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'no text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Логин',
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(context, '/second');
                    } else {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Open site'),
                  //  color: Colors.blue[400],
                ),
              ],
            ),
          ));
        }));
  }
}
