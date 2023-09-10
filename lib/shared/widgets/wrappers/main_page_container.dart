import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/ui_effects/scroll_animation.dart';

class MainPageContainer extends StatelessWidget {
  MainPageContainer({
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final double height = mq.size.height;
    final double width = mq.size.width;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
      ),
      child: ScrollAnimation(
        child: SingleChildScrollView(
          child: Column(
            children: [...children],
          ),
        ),
      ),
    );
  }
}
