import 'package:flutter/material.dart';
import 'package:shopmate/pages/user_lists/widgets/user_lists_list_element.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/widgets/wrappers/main_page_container.dart';

class UserListsPage extends StatefulWidget {
  UserListsPage({super.key});

  @override
  State<UserListsPage> createState() => _UserListsPageState();
}

class _UserListsPageState extends State<UserListsPage> {
  @override
  Widget build(BuildContext context) {
    // final MediaQueryData mq = MediaQuery.of(context);
    // final double height = mq.size.height;
    // final double width = mq.size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Your Lists',
          style: AppTextStyles.appBarTitle,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            AppIcons.closePage,
            color: AppColors.darkGrey,
            size: AppIcons.closePageIconSize,
          ),
        ),
      ),
      body: MainPageContainer(
        children: [
          UserListsListElement(
            listTitle: 'Corner Shop',
            listCheckedPercentage: 0.56,
            progressColor: AppColors.primaryOrange,
          ),
          UserListsListElement(
            listTitle: 'Walmart',
            listCheckedPercentage: 0.16,
          ),
          UserListsListElement(
            listTitle: 'Sam\'s club',
            listCheckedPercentage: 0.86,
            progressColor: AppColors.primaryOrange,
          ),
        ],
      ),
    );
  }
}
