import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/search/widgets/maincard.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchHead(title: "Movies & TV"),
          KHeight,
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.2,
              children: List.generate(
                20,
                (index) {
                  return const MainCard();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
