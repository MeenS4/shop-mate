import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        title: Text(
          'Your Lists',
          style: AppTextStyles.appBarTitle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            AppIcons.closePage,
            color: AppColors.darkGrey,
          ),
        ),
      ),
      body: MainPageContainer(
        children: [],
      ),
    );
  }
}
