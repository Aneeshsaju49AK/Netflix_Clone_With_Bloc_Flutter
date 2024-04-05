import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/home/home_page.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/appbar.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/common_textbutton.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              Icon(
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
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: KWhiteColor,
              labelColor: KBlackColor,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                  color: KWhiteColor, borderRadius: BorderRadius.circular(30)),
              tabs: [
                Tab(
                  child: Text("Coming Soon"),
                ),
                Tab(
                  child: Text("Everyone Watching"),
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabBarViewComingSoon(),
            _buildTabBarViewEveryone(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBarViewComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ComingSoonWiget(),
      shrinkWrap: true,
    );
  }

  Widget _buildTabBarViewEveryone() {
    return Container();
  }
}

class ComingSoonWiget extends StatelessWidget {
  const ComingSoonWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "30",
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              height: 420,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNXWE5qrpvlgmc1LQ9xBoh0N3Dcu8oKBdo8A&s"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_off,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "data",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Comming Friday",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButtonWidget(
                            iconSize: 25,
                            fontSize: 10,
                            icon: Icons.alarm,
                            title: "Reminde me",
                          ),
                          KWidth,
                          IconButtonWidget(
                            iconSize: 25,
                            fontSize: 10,
                            icon: Icons.info,
                            title: "info",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                  KHeight,
                  Text(
                    "data",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "dats  landing a  leading school is dream to comme ahdoa tha value ajddjala f",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
