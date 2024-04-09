import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone_using_bloc/core/colors/colors.dart';
import 'package:netflix_clone_using_bloc/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: ScreenMainPage(),
    );
  }
}
