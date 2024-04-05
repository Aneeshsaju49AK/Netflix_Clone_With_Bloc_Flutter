import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.settings,
          color: KWhiteColor,
        ),
        Text(
          "Smart Downloads",
        ),
      ],
    );
  }
}
