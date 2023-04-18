import 'package:flutter/material.dart';

import '../text_widget.dart';

class SkillBarComponent extends StatelessWidget {
  const SkillBarComponent(
      {Key? key,
      required this.title,
      required this.percent,
      required this.progressColor})
      : super(key: key);

  final String title;
  final double percent;
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
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: percent * 5.9,
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
