import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.4,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                "https://media.istockphoto.com/id/1566653954/photo/hands-holding-clapper-board-making-video-cinema-in-the-studio-movie-production-clapper-board.webp?b=1&s=170667a&w=0&k=20&c=6Q40NxZ5hsiFXsb4cAuBNKbAv1zUAx2bgowvBXALmy4=",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        KWidth,
        Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: KWhiteColor,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: KBlackColor,
            child: Icon(
              CupertinoIcons.play_fill,
              color: KWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
