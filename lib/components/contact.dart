import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final int inputType;

  Contact(this.inputType);

  @override
  Widget build(BuildContext context) {
    Widget type = Text('');
    String name = '';
    String path = '';

    if (inputType == 1) {
      type = NewGroup();
    } else if (inputType == 2) {
      type = NewContact();
    } else {
      switch (inputType) {
        case 3:
          name = 'Pessoa 1';
          path = 'u1.jpeg';
          break;
        
        case 4:
          name = 'Pessoa 2';
          path = 'u2.jpeg';
          break;

        case 5:
          name = 'Pessoa 3';
          path = 'u3.jpeg';
          break;

        case 6:
          name = 'Pessoa 4';
          path = 'u4.jpeg';
          break;
        
        case 7:
          name = 'Pessoa 5';
          path = 'u5.jpeg';
          break;
      }
    
      type = NormalContact(name, path);
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(2.0, 1.0, 2.0, 0.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: 10,
        child: type
      ),
    );
  }
}

class NewGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xff00cc3f),
            child: Icon(Icons.group, color: Colors.white),
          ),

          title: Text('Novo grupo'),
        ),
      ),

      onTap: () {},
    );
  }
}

class NewContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xff00cc3f),
            child: Icon(Icons.person_add, color: Colors.white),
          ),

          title: Text('Novo contato'),
        ),
      ),

      onTap: () {},
    );
  }
}

class NormalContact extends StatelessWidget {
  final String name;
  final String path;

  NormalContact(this.name, this.path);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/$path')
          ),

          title: Text(name),
        ),
      ),

      onTap: () {},
    );
  }
}