import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';

class IconButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? iconSize;
  final double? fontSize;
  const IconButtonWidget({
    required this.icon,
    required this.title,
    this.fontSize,
    this.iconSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: KWhiteColor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
