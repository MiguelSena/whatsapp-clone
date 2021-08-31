import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homepage.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: HomePage()
    );
  }
}