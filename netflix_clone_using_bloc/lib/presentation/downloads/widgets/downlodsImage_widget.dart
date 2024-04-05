import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget(
      {super.key,
      this.angle,
      required this.margin,
      required this.sizeWidth,
      required this.sizeHeight});
  final double? angle;
  final EdgeInsets margin;
  double sizeWidth;
  double sizeHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle! * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * sizeWidth,
        height: size.width * sizeHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: KBlackColor,
          image: const DecorationImage(
            image: NetworkImage(
              "https://img.freepik.com/free-vector/cinema-realistic-poster-with-illuminated-bucket-popcorn-drink-3d-glasses-reel-tickets-blue-background-with-tapes-vector-illustration_1284-77070.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1712275200&semt=sph",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
