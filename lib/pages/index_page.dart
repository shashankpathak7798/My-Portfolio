import 'package:flutter/material.dart';

import '../widgets/contact_widget.dart';
import '../widgets/intro_widget.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/description_widget.dart';
import '../widgets/projects_widget.dart';
import '../widgets/skill_overview_widget.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.grey.withOpacity(0.2),
                width: size.width,
                height: size.width > 800 ? size.height * 0.8 : size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.9,
                          child: const AppBarWidget(),
                        ),
                        const IntroWidget(),
                      ],
                    ),
                  ),
                ),
              ),
              const DescriptionWidget(),
              const Divider(),
              const SkillOverviewWidget(),
              const Divider(),
              const ProjectsWidget(),
              const Divider(),
              const ContactWidget(),
            ],
          ),
        ),
      ),
    );
  }
}