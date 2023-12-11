import 'package:flutter/material.dart';

class BottomNavigationTab extends StatelessWidget {
  const BottomNavigationTab({
    super.key,
    required this.title,
    required this.onPress,
  });

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(title),
    );
  }
}
