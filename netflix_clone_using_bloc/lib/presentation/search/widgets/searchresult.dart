import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchHead(title: "Movies & TV"),
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
                  return MainCard();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxyWVFRzRMy8J0MPpcaJkBKiGrUWUVBY9lj-3xzSAm_30uqjWuchMUuruZavJ4CkNJtHE&usqp=CAU"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
