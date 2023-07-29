import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './text_widget.dart';

class IntroWidget extends StatefulWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  State<IntroWidget> createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  bool _isHoveringContact = false;
  bool _isHoveringWorks = false;



  Widget _buildAvatar(Size size) {
    return Container(
      width: size.width * 0.25,
      height: size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30000),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30000),
        child: Image.asset(
          "assets/images/personal_pic.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }



  Widget _buildIntro(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: "I'm Mobile Application Developer.",
          textWeight: FontWeight.w900,
          textSize: size.width * 0.03,
          spacing: 0.4,
          textColor: const Color.fromRGBO(52, 62, 81, 1),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: size.width * 0.4,
          child: TextWidget(
            text:
            "Hello! I'm Shashank, a freelance mobile app developer & also a fresher based in Maharashtra, India. I'm very passionate about the work I do.",
            textWeight: FontWeight.bold,
            textSize: size.width * 0.015,
            spacing: 0.8,
            textColor: const Color.fromRGBO(
              96,
              105,
              123,
              1,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ButtonBar(
          children: [
            SizedBox(
              width: size.width * 0.15,
              height: 50,
              child: MouseRegion(
                onEnter: (event) => setState(() {
                  _isHoveringWorks = true;
                }),
                onExit: (event) => setState(() {
                  _isHoveringWorks = false;
                }),
                child: Transform.translate(
                  offset: _isHoveringWorks ? const Offset(0, -5) : const Offset(0, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      Uri uri = Uri.parse("https://github.com/stars/shashankpathak7798/lists/flutter-projects");
                      if(await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Occured!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
                        return;
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(
                          209,
                          107,
                          134,
                          1,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromRGBO(
                              209,
                              107,
                              134,
                              1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                    child: TextWidget(
                      text: "See My Work",
                      textColor: Colors.white,
                      textWeight: FontWeight.w600,
                      textSize: size.width * 0.015,
                      spacing: 0.8,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.15,
              height: 50,
              child: MouseRegion(
                onEnter: (event) => setState(() {
                  _isHoveringContact = true;
                }),
                onExit: (event) => setState(() {
                  _isHoveringContact = false;
                }),
                child: Transform.translate(
                  offset: _isHoveringContact ? const Offset(0, -5) : const Offset(0, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      Uri uri = Uri(
                        scheme: "mailto",
                        path: "shashankpathak7798@gmail.com",
                      );
                      if(await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Occured!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
                        return;
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _isHoveringContact ? const Color.fromRGBO(
                          209,
                          107,
                          134,
                          1,
                        ) : Colors.grey.shade200,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromRGBO(
                              209,
                              107,
                              134,
                              1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                    child: TextWidget(
                      text: "Contact Me",
                      textColor: _isHoveringContact ? Colors.white : const Color.fromRGBO(
                        209,
                        107,
                        134,
                        1,
                      ),
                      textWeight: FontWeight.w600,
                      textSize: size.width * 0.015,
                      spacing: 0.8,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.1,
        right: size.width * 0.1,
        top: 0,
        bottom: 30,
      ),
      child: SizedBox(
        width: size.width * 0.8,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildAvatar(size),
              SizedBox(
                width: size.width * 0.02,
              ),
              _buildIntro(size),
            ],
          )
        ),
      ),
    );
  }
}
