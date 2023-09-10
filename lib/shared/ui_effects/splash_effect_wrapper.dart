import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class SplashEffectWrapper extends StatelessWidget {
  final VoidCallback onTapFunc;
  final Widget child;
  final Color color;
  Color? splashColor;
  double borderRadius;

  SplashEffectWrapper({
    required VoidCallback this.onTapFunc,
    required Widget this.child,
    required Color this.color,
    Color this.splashColor = AppColors.lightGrey,
    double this.borderRadius = AppConstants.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTapFunc,
          child: child,
        ),
      ),
    );
  }
}
