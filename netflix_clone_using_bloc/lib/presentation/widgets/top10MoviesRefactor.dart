import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/home/widgets/top10movies.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/title.dart';

class Top10MovieRefactorWidget extends StatelessWidget {
  const Top10MovieRefactorWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: SearchHead(
            title: "Top 10",
          ),
        ),
        KHeight,
        LimitedBox(
          maxHeight: size.height * 0.25,
          maxWidth: size.width * 0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Top10MoviesWidget(index: index),
            ),
          ),
        ),
      ],
    );
  }
}
