import 'package:flutter/material.dart';
import './components/skill_card_component.dart';

class SkillOverviewWidget extends StatefulWidget {
  const SkillOverviewWidget({Key? key}) : super(key: key);

  @override
  State<SkillOverviewWidget> createState() => _SkillOverviewWidgetState();
}

class _SkillOverviewWidgetState extends State<SkillOverviewWidget> {
  List<Map<String, dynamic>> education = [
    {
      "name": "GGS Public School, Nashik",
      "course": "10th (SSC)",
      "duration": "Till 2018",
    },
    {
      "name": "K K Wagh Polytechnic, Nashik",
      "course": "Diploma in Computer Technology",
      "duration": "2018 - 2021",
    },
    {
      "name": "Sandip Foundations, SITRC, Nashik",
      "course": "B.E Computer Engineering",
      "duration": "2021 - Present",
    },
  ];

  List<Map<String, dynamic>> experience = [
    {
      "role": "Flutter Developer Intern",
      "company": "Wolfizer Technologies LLP",
      "duration": "Jan 2023- Feb 2023",
    },
    {
      "role": "Flutter Developer Intern",
      "company": "Geez Social",
      "duration": "April 2023",
    },
    {
      "role": "Flutter Developer",
      "company": "Budding Startup",
      "duration": "June 2023 - Present",
    },
  ];

  double _checkHeight(Size size) {
    if (size.height < 1000) {
      return size.height * 0.38;
    }
    return size.height * 0.25;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: size.width * 0.035,
      ),
      child: SizedBox(
        width: size.width,
        height: _checkHeight(size),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                    child: Text(
                      "Education",
                      style: TextStyle(
                        fontSize: size.width * 0.025,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                        color: const Color.fromRGBO(
                          52,
                          62,
                          81,
                          1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: size.height * 0.3,
                      child: ListView.builder(
                        itemBuilder: (context, index) => ListTile(
                          title: Text(education[index]["course"], style: const TextStyle(fontWeight: FontWeight.w700,),),
                          subtitle: Text(education[index]["name"], style: const TextStyle(fontWeight: FontWeight.w600,),),
                          trailing: Text(education[index]["duration"], style: const TextStyle(fontWeight: FontWeight.w500,),),
                        ),
                        itemCount: education.length,
                      )),
                ],
              ),
            ),

            SizedBox(
              width: size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                    child: Text(
                      "Experience",
                      style: TextStyle(
                        fontSize: size.width * 0.025,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                        color: const Color.fromRGBO(
                          52,
                          62,
                          81,
                          1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: size.height * 0.3,
                      child: ListView.builder(
                        itemBuilder: (context, index) => ListTile(
                          title: Text(experience[index]["role"], style: const TextStyle(fontWeight: FontWeight.w700,),),
                          subtitle: Text(experience[index]["company"], style: const TextStyle(fontWeight: FontWeight.w600,),),
                          trailing: Text(experience[index]["duration"], style: const TextStyle(fontWeight: FontWeight.w500,),),
                        ),
                        itemCount: education.length,
                      )),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
