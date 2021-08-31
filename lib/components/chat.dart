import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String contact;
  final String message;
  final String time;
  final String image;

  Chat({this.contact, this.message, this.time, this.image});

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 0.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: 10,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/$image'),
          ),
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(contact),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0
                  )
                )
              ],
            )
          ),
          subtitle: Text(message)
        ),
      ),
    );
  }
}