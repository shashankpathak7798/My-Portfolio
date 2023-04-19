import 'package:flutter/material.dart';
import '/widgets/text_widget.dart';

class SkillCardComponent extends StatelessWidget {
  const SkillCardComponent({Key? key, required this.image, required this.title, required this.description}) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.27,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                child: ClipRRect(
                  child: Image.network(image),
                ),
              ),
              const SizedBox(height: 5,),
              TextWidget(text: title, textWeight: FontWeight.normal, textSize: 15, spacing: 0.3, textColor: Colors.black,),
              const SizedBox(height: 2.5,),
              const Divider(),
              const SizedBox(height: 2.5,),
              TextWidget(text: description, textWeight: FontWeight.w300, textSize: 12, spacing: 0.6, textColor: Colors.black87,),
            ],
          ),
        ),
      ),
    );
  }
}
