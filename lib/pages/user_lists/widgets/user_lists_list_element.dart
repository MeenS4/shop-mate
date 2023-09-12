import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shopmate/pages/list_details/list_details.dart';
import 'package:shopmate/resources/app_resources.dart';

class UserListsListElement extends StatefulWidget {
  final String listTitle;
  final double listCheckedPercentage;
  final Color progressColor;

  UserListsListElement({
    required this.listTitle,
    required this.listCheckedPercentage,
    this.progressColor = AppColors.primaryBlue,
  });

  @override
  State<UserListsListElement> createState() => _UserListsListElementState();
}

class _UserListsListElementState extends State<UserListsListElement> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    // final double height = mq.size.height;
    final double width = mq.size.width;

    return Container(
      width: width,
      margin: AppConstants.sectionMargin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        color: AppColors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          splashColor: AppColors.lightGrey,
          onTap: () {
            Navigator.of(context).push(
              AppAnimations.pageTransitionAnimationBuilder(
                ListDetailsPage(
                  listName: widget.listTitle,
                  listMainTheme: widget.progressColor,
                ),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    widget.listTitle,
                    style: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: AppFontSizes.fsSmallPlus,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  lineHeight: 8,
                  percent: widget.listCheckedPercentage,
                  animation: true,
                  curve: Curves.easeIn,
                  animationDuration: 400,
                  backgroundColor: AppColors.backgroundColor,
                  progressColor: widget.progressColor,
                  padding: EdgeInsets.only(right: 5),
                  barRadius: Radius.circular(5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
