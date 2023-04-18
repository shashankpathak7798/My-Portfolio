import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/components/skill_bar_component.dart';
import 'package:my_portfolio/widgets/text_widget.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {

  List<Map<String, dynamic>> skills = [
    {
      "name": "Flutter",
      "percent": 100,
      "color": const Color.fromRGBO(199, 177, 221, 1,),
    },
    {
      "name": "FlutterFlow",
      "percent": 75,
      "color": const Color.fromRGBO(140, 174, 236, 1,),
    },
    {
      "name": "Android App Development",
      "percent": 80,
      "color": const Color.fromRGBO(176, 212, 193, 1,),
    },
    {
      "name": "Dart",
      "percent": 100,
      "color": const Color.fromRGBO(227, 166, 182, 1,),
    },
    {
      "name": "C/C++",
      "percent": 85,
      "color": const Color.fromRGBO(145, 127, 179, 1,),
    },
    {
      "name": "Java",
      "percent": 85,
      "color": const Color.fromRGBO(247, 208, 96, 1,),
    },
    {
      "name": "Firebase",
      "percent": 95,
      "color": const Color.fromRGBO(86, 157, 170, 1,),
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 120,),
      child: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.4,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.25 + 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(text: "Profile", textWeight: FontWeight.w700, textSize: size.width * 0.025, spacing: 0.3, textColor: const Color.fromRGBO(52, 62, 81, 1,),),
                  const SizedBox(height: 20,),
                  TextWidget(text: "As a current student pursuing a degree in Computer Science, I am eager to build a career in Flutter development. With a solid foundation in programming languages such as Java and Dart, I have already begun exploring Flutter and Dart, and am enthusiastic about learning more.", textWeight: FontWeight.w300, textSize: size.width * 0.014, spacing: 0.2, textColor: const Color.fromRGBO(96, 105, 123, 1,),),
                ],
              ),
            ),
            const SizedBox(width: 50,),
            SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.25 + 5,
              child: ListView.builder(itemBuilder: (context, index) => SkillBarComponent(title: skills[index]["name"], percent: skills[index]["percent"], progressColor: skills[index]["color"],), itemCount: skills.length,),
            ),
          ],
        ),
      ),
    );
  }
}
