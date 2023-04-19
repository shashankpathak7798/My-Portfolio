import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/text_widget.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  bool _isHovering = false;

  Future<void> _submitResponse() async {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _messageController.text.isEmpty ||
        !_emailController.text.contains("@")) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Provide Valid Information to Contact!!"),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
      return;
    } else {
      Uri uri = Uri(
          scheme: "mailto",
          path: "shashankpathak7798@gmail.com",
          query:
              "subject=${_nameController.text}&body=From: ${_emailController.text}\n${_messageController.text}");

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Error Occured!!"),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
        vertical: 30,
      ),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(
            252,
            243,
            245,
            1,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: SizedBox(
                width: size.width * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "assets/images/email_icon.png",
                        color: Colors.transparent,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextWidget(
                      text: "If you like what you see, let's work together.",
                      textWeight: FontWeight.w700,
                      textSize: size.width * 0.027,
                      spacing: 0.8,
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
                      text:
                          "I bring rapid solutions to make the life of my clients easier. Have any questions? Reach out to me from this contact form and I will get back to you shortly.",
                      textWeight: FontWeight.w500,
                      textSize: size.width * 0.015,
                      spacing: 0.2,
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 40,
              ),
              child: SizedBox(
                width: size.width * 0.35,
                height: size.height * 0.37,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.162,
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: "Name",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: size.width * 0.162,
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: "Email",
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      child: TextField(
                        controller: _messageController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: "Message",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) => setState(() {
                        _isHovering = true;
                      }),
                      onExit: (event) => setState(() {
                        _isHovering = false;
                      }),
                      child: Transform.translate(
                        offset: _isHovering
                            ? const Offset(0, -5)
                            : const Offset(0, 0),
                        child: ElevatedButton(
                          onPressed: _submitResponse,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              _isHovering
                                  ? const Color.fromRGBO(
                                      209,
                                      107,
                                      134,
                                      1,
                                    )
                                  : const Color.fromRGBO(
                                      252,
                                      243,
                                      245,
                                      1,
                                    ),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Send Message ->",
                              style: TextStyle(
                                fontSize: size.width * 0.012,
                                color: _isHovering
                                    ? Colors.white
                                    : const Color.fromRGBO(
                                        209,
                                        107,
                                        134,
                                        1,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
