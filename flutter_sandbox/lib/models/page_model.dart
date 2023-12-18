import 'package:flutter/material.dart';

class PageModel {
  final int index;
  final String label;
  final String iconData;
  final Widget page;
  PageModel({
    required this.index,
    required this.label,
    required this.iconData,
    required this.page,
  });
}
