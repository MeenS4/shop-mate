import 'package:flutter/material.dart';
import 'package:shopmate/pages/list_details/list_details.dart';
import 'package:shopmate/resources/app_resources.dart';

class UserListsListTile extends StatelessWidget {
  final MediaQueryData mq;
  final String listName;

  const UserListsListTile({
    required this.mq,
    required this.listName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.darkGrey,
      onTap: () {
        Navigator.of(context).push(
          AppAnimations.pageTransitionAnimationBuilder(
            ListDetailsPage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Center(
          child: Ink(
            width: mq.size.width * 0.42,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              listName,
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: AppFontSizes.fsSmallPlus,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
