import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/common_textbutton.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/mainListRefactor.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/top10MoviesRefactor.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }

              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: size.height * 0.7,
                          width: size.width / 1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdOnqe44_Mjj88Qb5kV7wLnzDi_spwS34IJvU2BR8RP82GLQqcvOjp4gR5hvKnGuhqwoA&usqp=CAU"),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.7,
                          width: size.width / 1,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4)),
                        ),
                        const Positioned(
                          bottom: 30,
                          left: 0,
                          right: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButtonWidget(
                                  iconSize: 30,
                                  icon: Icons.add,
                                  title: "My List"),
                              StackbuttonMain(title: "play"),
                              IconButtonWidget(
                                  iconSize: 30,
                                  icon: Icons.info,
                                  title: "My List"),
                            ],
                          ),
                        )
                      ],
                    ),
                    KHeight,
                    MainListRefactor(
                        size: size, title: "Released in the past year"),
                    KHeight,
                    MainListRefactor(size: size, title: "Trending Now"),
                    KHeight,
                    Top10MovieRefactorWidget(size: size),
                    KHeight,
                    MainListRefactor(size: size, title: "Tense Drama"),
                    KHeight,
                    MainListRefactor(size: size, title: "South indian Movies"),
                    KHeight,
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 1000,
                        ),
                        height: size.height * 0.16,
                        width: size.width / 1,
                        color: Colors.transparent.withOpacity(0.4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXJvK_njhCQMBQsZqdntDF_kjNoAX89fK6u6skApxZk2mkqiirfQT27_abt6QZQebvIug&usqp=CAU",
                                  width: 70,
                                  height: 70,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                KWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                KWidth,
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButtonWidget(title: "TV Shows"),
                                TextButtonWidget(title: "Movies"),
                                TextButtonWidget(title: "Categories"),
                              ],
                            )
                          ],
                        ),
                      )
                    : KHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  final String title;
  const TextButtonWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class StackbuttonMain extends StatelessWidget {
  final String title;
  const StackbuttonMain({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          KWhiteColor,
        ),
      ),
      icon: const Icon(Icons.play_arrow),
      label: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Text(
          title,
        ),
      ),
    );
  }
}
