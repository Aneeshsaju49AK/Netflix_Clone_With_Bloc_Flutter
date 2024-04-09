import 'package:flutter/material.dart';
import 'package:netflix_clone_using_bloc/core/colors/constant.dart';
import 'package:netflix_clone_using_bloc/presentation/new_and_hot/widgets/date_container_ComingSoon.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/common_textbutton.dart';
import 'package:netflix_clone_using_bloc/presentation/widgets/video_Container.dart';

class ComingSoonWiget extends StatelessWidget {
  const ComingSoonWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBoxDate(),
        ExpandedWidgetOnComingSoon(),
      ],
    );
  }
}

class ExpandedWidgetOnComingSoon extends StatelessWidget {
  const ExpandedWidgetOnComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: SizedBox(
          height: 420,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              StackImageInNewandHot(),
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
    );
  }
}
