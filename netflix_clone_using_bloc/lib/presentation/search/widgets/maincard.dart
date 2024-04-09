import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxyWVFRzRMy8J0MPpcaJkBKiGrUWUVBY9lj-3xzSAm_30uqjWuchMUuruZavJ4CkNJtHE&usqp=CAU"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
