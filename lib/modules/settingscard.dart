import 'package:flutter/material.dart';

class SettingsCard {
  final String title;
  final IconData leadingIcon;
  final IconButton actionButton;
  final VoidCallback onPressed;

SettingsCard({
    required this.title,
    required this.leadingIcon,
    required this.actionButton,
    required this.onPressed, required int size,
  });

 // ignore: unused_element
 String get _title => title;
  // ignore: unused_element
  IconData get _leadingIcon => leadingIcon;
  // ignore: unused_element
  Type get _IconButton => IconButton;
}
