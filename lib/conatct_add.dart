import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

    )
);

class ContactsAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(),
            SizedBox(),
            ElevatedButton(
              onPressed: () {},
            )
          ],
        ));
  }
}
