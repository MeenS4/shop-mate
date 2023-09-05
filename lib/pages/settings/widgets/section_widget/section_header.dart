import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class SettingsPageSectionHeader extends StatelessWidget {
  final String title;
  const SettingsPageSectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.darkGrey,
          fontSize: AppFontSizes.fsSmallPlus,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
