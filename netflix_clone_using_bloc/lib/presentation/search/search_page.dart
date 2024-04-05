import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/search/widgets/search_idle.dart';
import 'package:netflix_clone_using_bloc/presentation/search/widgets/searchresult.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: KGreyColor.withOpacity(0.4),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: KGreyColor,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: KButtonColorWhite,
                ),
                style: TextStyle(color: KWhiteColor),
              ),
              KHeight,
              // Expanded(child: SearchIdleWidget()),
              Expanded(
                child: SearchResultWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
