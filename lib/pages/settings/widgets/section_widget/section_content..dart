import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class SettingsPageSectionContent extends StatelessWidget {
  final String title;
  final bool? displayDivider;
  SettingsPageSectionContent({
    required String this.title,
    bool? this.displayDivider,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    Widget genContentDivider() {
      return Container(
        height: 1,
        width: width,
        color: AppColors.dividerColor,
      );
    }

    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          width: width,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.darkGrey,
              fontSize: AppFontSizes.fsSmallPlus,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        /*
        Divider shows only when displayDivider is not null to prevent 
        overlaping dividers in settings_page.dart
        */
        if (displayDivider == null) genContentDivider(),
      ],
    );
  }
}
