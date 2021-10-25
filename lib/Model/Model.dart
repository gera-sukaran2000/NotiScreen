// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MessageDisplay {
  int id;
  final String? title;
  final String? messageBody;
  final IconData icon;
  bool active;

  MessageDisplay({
    required this.active,
    required this.id,
    required this.icon,
    required this.messageBody,
    required this.title,
  });
}
