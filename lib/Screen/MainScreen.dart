// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notipush1/Widgets/Display.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        leading: Container(
          margin: EdgeInsets.only(left: 15, bottom: 10, right: 5, top: 10),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11), color: Colors.pink[200]),
          child: const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: MessagingWidget(),
    );
  }
}
