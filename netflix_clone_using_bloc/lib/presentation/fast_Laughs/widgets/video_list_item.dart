import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ05dXFhv6Ts9s_TjdJFf15OLsPqPAKi5PZocXYpNItKDEhGQ1HkwVGXJ9ytFIuaoEqeXc&usqp=CAU"),
                    ),
                    KHeight20,
                    VideoAction(
                      icon: Icons.emoji_emotions,
                      title: "LOL",
                    ),
                    KHeight20,
                    VideoAction(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    KHeight20,
                    VideoAction(
                      icon: Icons.share,
                      title: "Share",
                    ),
                    KHeight20,
                    VideoAction(
                      icon: Icons.play_arrow,
                      title: "Play",
                    ),
                    KHeight,
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoAction extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoAction({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: KButtonColorWhite,
        ),
        Text("data"),
      ],
    );
  }
}
