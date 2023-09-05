import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/UI/scroll_animation.dart';

class ListDetailsPage extends StatefulWidget {
  const ListDetailsPage();

  @override
  State<ListDetailsPage> createState() => _ListDetailsPageState();
}

class _ListDetailsPageState extends State<ListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final double height = mq.size.height;
    final double width = mq.size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        centerTitle: AppConstants.isAppBarTitleCentered,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            AppIcons.closePage,
            color: AppColors.darkGrey,
          ),
        ),
        title: Text(
          'List Name',
          style: AppTextStyles.appBarTitle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: AppColors.darkGrey,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: height,
        child: ScrollAnimation(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColors.dividerColor, width: 1),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.circle_outlined,
                        color: AppColors.primaryOrange,
                      ),
                    ),
                    // SizedBox(width: 10),
                    Text(
                      'List Item',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: AppFontSizes.fsSmallPlus,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
