import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';

class AppbarCommonwidget extends StatelessWidget {
  final String title;
  const AppbarCommonwidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KWidth,
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        KWidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        KWidth,
      ],
    );
  }
}
