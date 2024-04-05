import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_using_bloc/presentation/home/widgets/listViewMainpage.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/title.dart';

import '../../core/colors/constant.dart';

class MainListRefactor extends StatelessWidget {
  const MainListRefactor({
    super.key,
    required this.size,
    required this.title,
  });

  final Size size;
  final String title;

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
            title: title,
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
              (index) => ListviewMainpage(size: size),
            ),
          ),
        ),
      ],
    );
  }
}
