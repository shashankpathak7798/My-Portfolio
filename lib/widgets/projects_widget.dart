import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './components/project_details_component.dart';
import './text_widget.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({Key? key}) : super(key: key);

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {


  List<Map<String, dynamic>> projects = [

    {
      "title": "Reflex Game",
      "description": "This App is developed to calculate the response time of the user for a certain event.",
      "github": "https://github.com/shashankpathak7798/ReflexGame.git",
      "images": ["assets/images/reflex_game_1.jpg", "assets/images/reflex_game_2.jpg", "assets/images/reflex_game_3.jpg", "assets/images/reflex_game_4.jpg",],
      "color": Colors.amber.shade100,
    },
    {
      "title": "SITRC_COMP",
      "description": "COORDINATED WITH A TEAM OF 3 MEMBERS TO DEVELOP AN FLUTTER BASED MOBILE APP FOR COMPUTER DEPARTMENT.",
      "github": "https://github.com/shashankpathak7798/SITRC_COMP.git",
      "images": ["assets/images/sitrc_comp_1.jpg", "assets/images/sitrc_comp_2.jpg", "assets/images/sitrc_comp_3.jpg", "assets/images/sitrc_comp_4.jpg",],
      "color": Colors.green.shade100,
    },
    {
      "title": "Expense Planner",
      "description": "Flutter App where you can keep record of the daily expenses.",
      "github": "https://github.com/shashankpathak7798/Expense-Planner-App.git",
      "images": ["assets/images/expense_planner_app_1.jpg", "assets/images/expense_planner_app_3.jpg", "assets/images/expense_planner_app_2.jpg",],
      "color": Colors.green.shade100,
    },
  ];


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.03,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              TextWidget(text: "Projects", textWeight: FontWeight.w900, textSize: size.width * 0.025, spacing: 0.2, textColor: const Color.fromRGBO(52, 62, 81, 1,),),
              const SizedBox(height: 10,),
              TextWidget(text: "Check out some of my latest projects", textWeight: FontWeight.w400, textSize: size.width * 0.018, spacing: 0.2, textColor: const Color.fromRGBO(52, 62, 81, 1,),),
            ],),
            ElevatedButton(onPressed: () async {
              if(await canLaunchUrl(Uri.parse("https://github.com/shashankpathak7798/"),)) {
                await launchUrl(Uri.parse("https://github.com/shashankpathak7798/"),);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Launching URL!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
              }
            }, style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent.shade100),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
            ), child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("See All", style: TextStyle(fontSize: 22,),),
            ),)
          ],),
          SizedBox(height: size.height * 0.03,),
          ProjectDetailsComponent(name: projects[0]["title"], description: projects[0]["description"], github: projects[0]["github"], images: projects[0]["images"], bgColor: projects[0]["color"],),
          SizedBox(height: size.height * 0.04,),
          ProjectDetailsComponent(name: projects[1]["title"], description: projects[1]["description"], github: projects[1]["github"], images: projects[1]["images"], bgColor: projects[1]["color"],),
          SizedBox(height: size.height * 0.04,),
          ProjectDetailsComponent(name: projects[2]["title"], description: projects[2]["description"], github: projects[2]["github"], images: projects[2]["images"], bgColor: projects[2]["color"],),
        ],
      ),
    );
  }
}
