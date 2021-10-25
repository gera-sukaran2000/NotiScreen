// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notipush1/Model/Model.dart';
import 'package:notipush1/Widgets/List.dart';

class MessagingWidget extends StatefulWidget {
  @override
  _MessagingWidgetState createState() => _MessagingWidgetState();
}

class _MessagingWidgetState extends State<MessagingWidget> {
  final List<MessageDisplay> _messages = [
    MessageDisplay(
        id: 1,
        active: false,
        icon: Icons.grass,
        messageBody: 'We have an exciting offer for you near to you location',
        title: 'Cannabies'),
    MessageDisplay(
        id: 2,
        active: false,
        icon: Icons.photo_library,
        messageBody: 'We have an exciting offer for you near to you location',
        title: 'Marijuana'),
    MessageDisplay(
        id: 3,
        active: false,
        icon: Icons.location_on,
        messageBody: 'We have an exciting offer for you near to you location',
        title: 'Free Delivery'),
    MessageDisplay(
        id: 4,
        active: false,
        icon: Icons.grass,
        messageBody: 'We have an exciting offer for you near to you location',
        title: 'Cannabies'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 20, right: 15),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemBuilder: (context, index) => ListDisplay(
          singleObject: _messages[index],
          messages: _messages,
        ),
        itemCount: _messages.length,
      ),
    );
  }
}
