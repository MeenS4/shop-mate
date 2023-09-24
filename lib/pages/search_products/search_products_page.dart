import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/widgets/wrappers/main_page_container.dart';

class SearchProductsPage extends StatefulWidget {
  const SearchProductsPage({super.key});

  @override
  State<SearchProductsPage> createState() => _SearchProductsPageState();
}

class _SearchProductsPageState extends State<SearchProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Search Products',
          style: AppTextStyles.appBarTitle,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
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
