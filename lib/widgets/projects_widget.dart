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
      "title": "Expense Planner App",
      "description": "App where you can keep record of the daily expenses. This is a prototype so data is temporarily available. After app restarts the data is erased.",
      "github": "https://github.com/shashankpathak7798/Expense-Planner-App.git",
      "images": ["assets/images/expense_planner_app_1.jpg", "assets/images/expense_planner_app_3.jpg", "assets/images/expense_planner_app_2.jpg",],
      "color": Colors.green.shade100,
    },
    {
      "title": "Meal App",
      "description": "This is a simple flutter app in which you can veiw meals, favorite meals, filter the meals by given filters, and also you can view ingredients required to prepare the meal and the steps for the same.",
      "github": "https://github.com/shashankpathak7798/Meal-App.git",
      "images": ["assets/images/meals_app_1.jpg", "assets/images/meals_app_3.jpg", "assets/images/meals_app_2.jpg"],
      "color": Colors.amber.shade100,
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
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Launching LinkedIn URL!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
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
        ],
      ),
    );
  }
}
