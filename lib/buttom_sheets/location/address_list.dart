// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class AddressList{
  final IconData leadingIcon;
  final String title;
  final String subtitle;

  AddressList({
  required this. leadingIcon,
  required this.title, 
  required this.subtitle,
  });

  String get _title => title;
  String get _subtitle => subtitle;

List<AddressList> location = [
    AddressList(
      leadingIcon: Icons.home_max_outlined,
      title: "Home address",
      subtitle: "Ship",
    ),
     AddressList(
      leadingIcon: Icons.home_max_outlined,
      title: "Temporary address",
      subtitle: "Ship",
    ),
  ];
}