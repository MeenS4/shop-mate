import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/ui_effects/scroll_animation.dart';

class MainPageContainer extends StatelessWidget {
  MainPageContainer({
    required this.children,
    this.resetFocusOnClick = false,
    this.isPageScrollable = true,
  });

  final List<Widget> children;
  final bool resetFocusOnClick;
  final bool isPageScrollable;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final double height = mq.size.height;
    final double width = mq.size.width;

    return GestureDetector(
      onTap: () {
        if (resetFocusOnClick) {
          FocusScope.of(context).requestFocus(new FocusNode());
        }
      },
      child: Container(
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
      ),
    );
  }
}
