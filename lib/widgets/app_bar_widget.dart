import 'package:flutter/material.dart';

import '../widgets/components/icon_bar_component.dart';
import '../widgets/text_widget.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
      child: Container(
        height: size.height * 0.1,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Shashank R Pathak",
              textWeight: FontWeight.w800,
              textSize: size.width * 0.02,
              spacing: 0.5,
              textColor: Colors.black,
            ),
            // const MenuBarComponent(),
            const IconBarComponent(),
          ],
        ),
      ),
    );
  }
}
