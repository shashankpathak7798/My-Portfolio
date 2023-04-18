import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/text_widget.dart';

class MenuBarComponent extends StatefulWidget {
  const MenuBarComponent({Key? key}) : super(key: key);

  @override
  State<MenuBarComponent> createState() => _MenuBarComponentState();
}

class _MenuBarComponentState extends State<MenuBarComponent> {
  bool _hoverHome = false;
  bool _hoverAbout = false;
  bool _hoverProjects = false;
  bool _hoverContact = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverHome = true;
          }),
          onExit: (event) => setState(() {
            _hoverHome = false;
          }),
          child: TextWidget(
            text: "Home",
            textWeight: FontWeight.w500,
            textSize: size.width * 0.015,
            spacing: 0.3,
            textColor: _hoverHome ? const Color.fromRGBO(
              209,
              107,
              134,
              1,
            ) : Colors.black,
          ),
        ),
        const VerticalDivider(),
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverAbout = true;
          }),
          onExit: (event) => setState(() {
            _hoverAbout = false;
          }),
          child: TextWidget(
            text: "About",
            textWeight: FontWeight.w500,
            textSize: size.width * 0.015,
            spacing: 0.3,
            textColor: _hoverAbout? const Color.fromRGBO(
              209,
              107,
              134,
              1,
            ) : Colors.black,
          ),
        ),
        const VerticalDivider(),
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverProjects = true;
          }),
          onExit: (event) => setState(() {
            _hoverProjects = false;
          }),
          child: TextWidget(
            text: "Projects",
            textWeight: FontWeight.w500,
            textSize: size.width * 0.015,
            spacing: 0.3,
            textColor: _hoverProjects ? const Color.fromRGBO(
              209,
              107,
              134,
              1,
            ) : Colors.black,
          ),
        ),
        const VerticalDivider(),
        MouseRegion(
          onEnter: (event) => setState(() {
            _hoverContact = true;
          }),
          onExit: (event) => setState(() {
            _hoverContact = false;
          }),
          child: TextWidget(
            text: "Contact",
            textWeight: FontWeight.w500,
            textSize: size.width * 0.015,
            spacing: 0.3,
            textColor: _hoverContact? const Color.fromRGBO(
              209,
              107,
              134,
              1,
            ) : Colors.black,
          ),
        ),
      ],
    );
  }
}
