import 'package:flutter/material.dart';
import 'package:whatsapp/components/chat.dart';

class Chats extends StatelessWidget {
  final List chats = [
    ['Pessoa 1', 'Mensagem 1', '12:00', 'u1.jpeg'],
    ['Pessoa 2', 'Mensagem 2', '13:00', 'u2.jpeg'],
    ['Pessoa 3', 'Mensagem 3', '14:00', 'u3.jpeg'],
    ['Pessoa 4', 'Mensagem 4', '15:00', 'u4.jpeg'],
    ['Pessoa 5', 'Mensagem 5', '16:00', 'u5.jpeg'],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final List chat = chats[index];

        return Chat(
          contact: chat[0],
          message: chat[1],
          time: chat[2],
          image: chat[3],
        );
      },
    );
  }
}