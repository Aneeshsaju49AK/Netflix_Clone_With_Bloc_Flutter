import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int value, _) {
        return BottomNavigationBar(
          currentIndex: value,
          onTap: (value) {
            indexChangeNotifier.value = value;
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.collections,
              ),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_emotions,
              ),
              label: "Fast Laughs",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_drop_down_circle,
              ),
              label: "Downloads",
            ),
          ],
        );
      },
    );
  }
}
