import 'package:flutter/cupertino.dart';

class SizedBoxDate extends StatelessWidget {
  const SizedBoxDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
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
    );
  }
}
