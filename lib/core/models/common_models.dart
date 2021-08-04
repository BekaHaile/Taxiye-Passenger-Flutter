import 'package:flutter/material.dart';

class Option {
  Option({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.info,
    this.toggleValue,
  });

  String title;
  String subtitle;
  IconData leadingIcon;
  bool? toggleValue;
}
