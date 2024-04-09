import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/new_and_hot/widgets/comingSoonList_geretarion.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/common_textbutton.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/video_Container.dart';

class ScreenNewAndHot extends StatefulWidget {
  const ScreenNewAndHot({Key? key});

  @override
  _ScreenNewAndHotState createState() => _ScreenNewAndHotState();
}

class _ScreenNewAndHotState extends State<ScreenNewAndHot>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int _currentIndex = 0;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: _currentIndex);
    _scrollController.addListener(_scrollListener);

    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (_currentIndex == 0) {
        setState(() {
          _currentIndex = 1;
          _tabController.animateTo(_currentIndex);
        });
      }
    } else if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (_currentIndex == 1) {
        setState(() {
          _currentIndex = 0;
          _tabController.animateTo(_currentIndex);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: const Text(
            "New & Hot",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: [
            Row(
              children: [
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
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            unselectedLabelColor: KWhiteColor,
            labelColor: KBlackColor,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            indicator: BoxDecoration(
              color: KWhiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            tabs: const [
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
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
            _tabController.animateTo(_currentIndex);
          });
        },
        children: [
          _buildTabBarViewComingSoon(),
          _buildTabBarViewEveryone(),
        ],
      ),
    );
  }

  Widget _buildTabBarViewComingSoon() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          ComingSoonWiget(),
        ],
      ),
      shrinkWrap: true,
    );
  }

  Widget _buildTabBarViewEveryone() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: 10,
      itemBuilder: (context, index) => const EveryOneWatching(),
      shrinkWrap: true,
    );
  }
}

class EveryOneWatching extends StatelessWidget {
  const EveryOneWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KHeight,
          Text(
            "data",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          KHeight,
          Text(
            " ekki hi i'm aneesh saju my man im goof dats  landing a  leading school is dream to comme ahdoa tha value ajddjala f",
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
          KHeight,
          StackImageInNewandHot(),
          KHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButtonWidget(
                iconSize: 25,
                fontSize: 10,
                icon: Icons.share,
                title: "Share",
              ),
              KWidth,
              IconButtonWidget(
                iconSize: 25,
                fontSize: 10,
                icon: Icons.add,
                title: "My List",
              ),
              KWidth,
              IconButtonWidget(
                iconSize: 25,
                fontSize: 10,
                icon: Icons.play_circle,
                title: "play",
              ),
              KWidth,
            ],
          )
        ],
      ),
    );
  }
}
