import 'package:flutter/material.dart';
import 'package:whatsapp/components/contact.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e55),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contatos', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              '5 contatos',
              style: TextStyle(fontSize: 13.0)
            )
          ],
        ),

        actions: [
          InkWell(
            child: Icon(Icons.search, size: 30.0),
            onTap: () {}
          ),
          const SizedBox(width: 16.0),

          InkWell(
            child: Icon(Icons.more_vert, size: 30.0),
            onTap: () {}
          ),
          const SizedBox(width: 16.0),
        ],
      ),

      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Contact(index + 1);
        },
      )
    );
  }
}