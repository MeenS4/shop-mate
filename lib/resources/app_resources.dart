import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppColors {
  static const backgroundColor = Color(0xFFEEEEF5);

  static const white = Color(0xFFFFFFFF);

  static const darkGrey = Color.fromARGB(255, 70, 70, 70);

  static const lightGrey = Color.fromARGB(255, 177, 177, 177);

  static const primaryBlue = Color.fromARGB(255, 24, 157, 234);

  static const primaryOrange = Color(0xFFFF8125);

  static const appBarBackgroundColor = Color(0xFFEEEEF5);

  static const dividerColor = Color.fromARGB(255, 220, 220, 220);
}

class AppFontSizes {
  static const String currentFont = 'Lato';

  static const double fsSmall = 12;

  static const double fsSmallPlus = 16;

  static const double fsMedium = 18;

  static const double fsMediumPlus = 20;

  static const double fsBig = 22;

  static const double fsBigPlus = 24;
}

class AppTextStyles {
  static const appFont = 'Lato';

  static const TextStyle appBarTitle = TextStyle(
    color: AppColors.darkGrey,
    fontFamily: AppTextStyles.appFont,
    fontSize: AppFontSizes.fsMediumPlus,
    fontWeight: FontWeight.w700,
  );
}

class AppConstants {
  static const sectionMargin = EdgeInsets.symmetric(
    horizontal: 15,
    vertical: 5,
  );

  static const bool isAppBarTitleCentered = true;

  static const double borderRadius = 10;
}

class AppAnimations {
  static const Duration pageTransitionDuration = Duration(milliseconds: 150);

  static const Duration reverseTransitionDuration = Duration(milliseconds: 150);

  static const PageTransitionType defaultPageTransition =
      PageTransitionType.fade;

  static PageTransition pageTransitionAnimationBuilder(Widget route) {
    return PageTransition(
      child: route,
      duration: pageTransitionDuration,
      reverseDuration: reverseTransitionDuration,
      type: defaultPageTransition,
    );
  }
}

class AppIcons {
  static const closePage = Icons.close;
}
