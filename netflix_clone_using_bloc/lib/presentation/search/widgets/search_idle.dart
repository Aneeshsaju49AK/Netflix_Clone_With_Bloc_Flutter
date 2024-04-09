import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/title.dart';
import 'package:netflix_clone_using_bloc/presentation/search/widgets/topsearchitem.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchHead(title: "Top Searches"),
        KHeight20,
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => const TopSearchItemTile(),
            separatorBuilder: (context, index) => KHeight,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
