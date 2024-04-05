import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Top10MoviesWidget extends StatelessWidget {
  final int index;
  const Top10MoviesWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 65,
              height: size.height * 0.3,
            ),
            Container(
              width: size.width * 0.3,
              height: size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://w0.peakpx.com/wallpaper/79/816/HD-wallpaper-sita-ramam-hollywood-movies-gallery-stills-clips.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -25,
          child: BorderedText(
            strokeWidth: 2.0,
            strokeColor: Colors.grey,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 120,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
