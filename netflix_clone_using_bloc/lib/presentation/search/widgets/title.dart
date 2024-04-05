import 'package:flutter/material.dart';

class SearchHead extends StatelessWidget {
  final String title;
  const SearchHead({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
