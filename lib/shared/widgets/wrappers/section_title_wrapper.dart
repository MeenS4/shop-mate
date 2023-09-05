import 'package:flutter/material.dart';

class SectionTitleWrapper extends StatelessWidget {
  final Text text;

  SectionTitleWrapper({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: text,
    );
  }
}
