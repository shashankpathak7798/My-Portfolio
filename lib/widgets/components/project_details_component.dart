import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/text_widget.dart';

class ProjectDetailsComponent extends StatefulWidget {
  const ProjectDetailsComponent({
    Key? key,
    required this.name,
    required this.description,
    required this.github,
    required this.images,
    required this.bgColor,
  }) : super(key: key);

  final String name, description, github;
  final List<String> images;
  final Color bgColor;

  @override
  State<ProjectDetailsComponent> createState() =>
      _ProjectDetailsComponentState();
}

class _ProjectDetailsComponentState extends State<ProjectDetailsComponent> {
  String title = "", description = "", githubRepo = "";

  bool _isHovering = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = widget.name;
    description = widget.description;
    githubRepo = widget.github;
  }


  Future<void> _launchProjectUrl() async {
    if(await canLaunchUrl(Uri.parse(githubRepo))) {
      await launchUrl(Uri.parse(githubRepo));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Launching Project URL!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
    }
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("Size: ${size.width}");

    return Container(
      width: size.width * 0.9,
      height: size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.bgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
            ),
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: title,
                    textWeight: FontWeight.w700,
                    textSize: size.width * 0.03,
                    spacing: 0.2,
                    textColor: const Color.fromRGBO(
                      52,
                      62,
                      81,
                      1,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    text: description,
                    textWeight: FontWeight.w500,
                    textSize: size.width > 800 ? (size.width * 0.012) : (size.width * 0.024),
                    spacing: 0.5,
                    textColor: const Color.fromRGBO(
                      96,
                      105,
                      123,
                      1,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MouseRegion(
                    onEnter: (event) => setState(() {
                      _isHovering = true;
                    }),
                    onExit: (event) => setState(() {
                      _isHovering = false;
                    }),
                    child: Transform.translate(
                        offset: _isHovering ? const Offset(0, -5) : const Offset(0, 0),
                        child: Container(
                        width: size.width * 0.17,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 0,),
                                child: ElevatedButton(
                                  onPressed: _launchProjectUrl,
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all<double>(0),
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent.shade100),
                                  ),
                                  child: TextWidget(
                                    text: "See Project",
                                    textColor: Colors.white,
                                    spacing: 0.3,
                                    textSize: size.width * 0.016,
                                    textWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                size: size.width * 0.024,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.03),
            child: SizedBox(
              width: size.width * 0.5,
              height: size.height * 0.5,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(widget.images[0],
                          height: size.height * 0.4,),
                      Image.asset(widget.images[1],
                          height: size.height * 0.4,),
                      Image.asset(widget.images[2],
                          height: size.height * 0.4,),
                      if(widget.images.length == 4) SizedBox(
                        child: Image.asset(widget.images[3],
                          height: size.height * 0.4,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
