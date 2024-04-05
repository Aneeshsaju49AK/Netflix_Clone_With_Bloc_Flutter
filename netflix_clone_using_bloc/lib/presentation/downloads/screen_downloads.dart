import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/presentation/downloads/widgets/section2.dart';
import 'package:netflix_clone_using_bloc/presentation/downloads/widgets/section3.dart';
import 'package:netflix_clone_using_bloc/presentation/downloads/widgets/smartDownloads.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/appbar.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  final _widgets = const [
    SmartDownloads(),
    Section2Dowlods(),
    Section3Downlods(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarCommonwidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (
          context,
          index,
        ) =>
            _widgets[index],
        separatorBuilder: (
          context,
          index,
        ) =>
            const SizedBox(
          height: 30,
        ),
        itemCount: _widgets.length,
      ),
    );
  }
}
