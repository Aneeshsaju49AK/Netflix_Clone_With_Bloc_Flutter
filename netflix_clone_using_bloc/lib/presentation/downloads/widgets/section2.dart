import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/downloads/widgets/downlodsImage_widget.dart';

class Section2Dowlods extends StatelessWidget {
  const Section2Dowlods({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        KHeight,
        const Text(
          "We will download a personalised\n selection of movies and shows\n for you, so there's always\n somthing to watch on\n your free time",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: KGreyColor,
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.43,
                  backgroundColor: KGreyColor[100]!.withOpacity(0.5),
                ),
              ),
              DownloadsImageWidget(
                sizeHeight: 0.6,
                sizeWidth: 0.4,
                angle: 25,
                margin: const EdgeInsets.only(
                  left: 130,
                  bottom: 30,
                ),
              ),
              DownloadsImageWidget(
                sizeHeight: 0.6,
                sizeWidth: 0.4,
                angle: -25,
                margin: const EdgeInsets.only(
                  right: 130,
                  bottom: 30,
                ),
              ),
              DownloadsImageWidget(
                sizeHeight: 0.7,
                sizeWidth: 0.5,
                angle: 0,
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
