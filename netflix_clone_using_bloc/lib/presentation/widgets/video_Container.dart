import 'package:flutter/material.dart';

class StackImageInNewandHot extends StatelessWidget {
  const StackImageInNewandHot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: 200,
          decoration: const BoxDecoration(
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
              icon: const Icon(
                Icons.volume_off,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
