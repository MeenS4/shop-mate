import 'package:flutter/material.dart';

class ScrollAnimation extends StatelessWidget {
  final Widget child;

  ScrollAnimation({required this.child});

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: child,
      onNotification: (notification) {
        if (notification is OverscrollIndicatorNotification) {
          notification.disallowIndicator();
          return true;
        }
        return false;
      },
    );
  }
}
