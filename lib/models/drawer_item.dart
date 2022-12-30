import 'package:flutter/material.dart';

class DrawerItem {
  final int id;
  final String title;
  final IconData icon;
  final bool isSelected;

  DrawerItem(
      {required this.title, required this.icon, required this.isSelected,required this.id});
}
