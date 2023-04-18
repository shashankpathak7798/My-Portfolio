import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.textWeight, required this.textSize, required this.spacing, required this.textColor});

  final text, textWeight, textSize, spacing, textColor;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: textWeight, fontSize: textSize, letterSpacing: spacing, color: textColor,), textAlign: TextAlign.start,);
  }
}
