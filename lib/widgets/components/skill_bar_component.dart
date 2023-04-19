import 'package:flutter/material.dart';

import '../text_widget.dart';

class SkillBarComponent extends StatelessWidget {
  const SkillBarComponent(
      {Key? key,
      required this.title,
      required this.percent,
      required this.progressColor,
      required this.totalSkills,
      })
      : super(key: key);

  final String title;
  final double percent, totalSkills;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: title,
              textWeight: FontWeight.w200,
              textSize: 20,
              spacing: 0.2,
              textColor: const Color.fromRGBO(96, 105, 123, 1),
            ),
            TextWidget(
              text: "$percent%",
              textWeight: FontWeight.w200,
              textSize: 20,
              spacing: 0.2,
              textColor: const Color.fromRGBO(96, 105, 123, 1),
            ),
          ],
        ),
        SizedBox(
          height: size.width * 0.015,
        ),
        SizedBox(
          width: percent < 100 ? percent * (size.width * 0.005) - 20 : size.width * 0.4,
          child: Container(
            width: percent,
            height: 10,
            color: progressColor,
          ),
        ),
      ],
    );
  }
}
