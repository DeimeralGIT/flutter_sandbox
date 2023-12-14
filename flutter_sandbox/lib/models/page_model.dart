import 'package:flutter/material.dart';

class PageModel {
  int index;
  String label;
  String iconData;
  Widget page;
  PageModel({
    required this.index,
    required this.label,
    required this.iconData,
    required this.page,
  });
}
