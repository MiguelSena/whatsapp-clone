import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/contacts.dart';
import 'package:whatsapp/screens/status.dart';

class TopBar extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e55),
            title: Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5.0,
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),

                Tab(
                  text: 'CONVERSAS',
                ),

                Tab(
                  text: 'STATUS',
                ),

                Tab(
                  text: 'CHAMADAS'
                ),                
              ]
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

          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff00cc3f),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contacts()));
            },
            child: Icon(Icons.chat)
          ),

          body: TabBarView(
            children: [
              Chats(),
              Chats(),
              Status(),
              Chats()
            ],
          )
        )
    );
  }
}