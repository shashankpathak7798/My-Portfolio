import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IconBarComponent extends StatefulWidget {
  const IconBarComponent({Key? key}) : super(key: key);

  @override
  State<IconBarComponent> createState() => _IconBarComponentState();
}

class _IconBarComponentState extends State<IconBarComponent> {
  bool _hoverTwitter = false;
  bool _hoverFacebook = false;
  bool _hoverLinkedIn = false;
  bool _hoverInstagram = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverTwitter = true;
          }),
          onExit: (event) => setState(() {
            _hoverTwitter = false;
          }),
          child: Transform.translate(
            offset: _hoverTwitter ? const Offset(0, -5) : const Offset(0, 0),
            child: IconButton(
              icon: Icon(FontAwesomeIcons.twitter, size: MediaQuery.of(context).size.width * 0.015,),
              onPressed: () async {
                if(await canLaunchUrl(Uri.parse("https://twitter.com/ShashankPa74692"))) {
                await launchUrl(Uri.parse("https://twitter.com/ShashankPa74692"));
                } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Launching Twitter URL!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
                }
              },
            ),
          ),
        ),
        const VerticalDivider(),
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverFacebook = true;
          }),
          onExit: (event) => setState(() {
            _hoverFacebook = false;
          }),
          child: Transform.translate(
            offset: _hoverFacebook ? const Offset(0, -5) : const Offset(0, 0),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.facebook,
                size: MediaQuery.of(context).size.width * 0.015,
              ),
              onPressed: () async {
                if(await canLaunchUrl(Uri.parse("https://www.facebook.com/sankalp.pathak.587?mibextid=ZbWKwL"),)) {
                  await launchUrl(Uri.parse("https://www.facebook.com/sankalp.pathak.587?mibextid=ZbWKwL"),);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Launching Facebook URL!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
                }
              },
            ),
          ),
        ),
        const VerticalDivider(),
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverLinkedIn = true;
          }),
          onExit: (event) => setState(() {
            _hoverLinkedIn = false;
          }),
          child: Transform.translate(
            offset: _hoverLinkedIn ? const Offset(0, -5) : const Offset(0, 0),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedin,
                size: MediaQuery.of(context).size.width * 0.015,
              ),
              onPressed: () async {
                if(await canLaunchUrl(Uri.parse("https://www.linkedin.com/in/shashank-pathak-3a7819214"),)) {
                  await launchUrl(Uri.parse("https://www.linkedin.com/in/shashank-pathak-3a7819214"),);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Error Launching LinkedIn URL!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
                }
              },
            ),
          ),
        ),
        const VerticalDivider(),
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverInstagram = true;
          }),
          onExit: (event) => setState(() {
            _hoverInstagram = false;
          }),
          child: Transform.translate(
            offset: _hoverInstagram ? const Offset(0, -5) : const Offset(0, 0),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: MediaQuery.of(context).size.width * 0.015,
              ),
              onPressed: () async {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Temporary Unavailable!!"), backgroundColor: Theme.of(context).colorScheme.error,),);
              },
            ),
          ),
        ),
      ],
    );
  }
}
