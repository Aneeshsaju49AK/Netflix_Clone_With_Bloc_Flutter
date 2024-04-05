import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';

class Section3Downlods extends StatelessWidget {
  const Section3Downlods({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          minWidth: double.maxFinite,
          color: KButtonColor,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "Setup",
            style: TextStyle(
              color: KWhiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        MaterialButton(
          color: KButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "See what you can",
            style: TextStyle(
              color: KBlackColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
