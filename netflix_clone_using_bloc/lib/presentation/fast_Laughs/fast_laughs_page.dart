import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/presentation/fast_Laughs/widgets/video_list_item.dart';

class ScreenFastAndLaughs extends StatelessWidget {
  const ScreenFastAndLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return VideoListItem(
              index: index,
            );
          }),
        ),
      ),
    );
  }
}
