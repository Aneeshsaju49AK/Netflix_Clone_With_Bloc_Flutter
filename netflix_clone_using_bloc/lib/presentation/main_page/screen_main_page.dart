import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone_using_bloc/presentation/fast_Laughs/fast_laughs_page.dart';
import 'package:netflix_clone_using_bloc/presentation/home/home_page.dart';
import 'package:netflix_clone_using_bloc/presentation/main_page/widgets/bottom_navigator.dart';
import 'package:netflix_clone_using_bloc/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix_clone_using_bloc/presentation/search/search_page.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastAndLaughs(),
    const ScreenSearch(),
    const ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
