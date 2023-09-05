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
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Center(
        child: Container(
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
                    ListDetailsPage(),
                  ),
                );
              },
              child: Container(
                height: double.infinity,
                width: mq.size.width * 0.42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConstants.borderRadius),
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
        ),
      ),
    );
  }
}
