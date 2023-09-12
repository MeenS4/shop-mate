import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopmate/pages/home/widgets/user_lists/user_lists.dart';
import 'package:shopmate/pages/settings/settings_page.dart';
import 'package:shopmate/pages/user_lists/user_lists_page.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/pages/home/widgets/recent_transactions/recent_transactions_widget.dart';
import 'package:shopmate/shared/widgets/visuals/cartesian_lie_chart_last_month/line_chart_last_month.dart';
import 'package:shopmate/shared/widgets/wrappers/main_page_container.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        toolbarHeight: 60,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.appBarBackgroundColor,
        ),
        title: Text(
          'ShopMate',
          style: AppTextStyles.appBarTitle,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: AppColors.primaryOrange,
        splashColor: AppColors.primaryOrange,
        child: Icon(
          Icons.add_rounded,
          color: AppColors.white,
          size: 30,
        ),
      ),

      //Bottom NavBar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          // Menu NavBar Button
          BottomNavigationBarItem(
            label: 'Menu',
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  AppAnimations.pageTransitionAnimationBuilder(
                    UserListsPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.menu_rounded,
                color: AppColors.darkGrey,
              ),
            ),
          ),

          //Settings NavBar Button
          BottomNavigationBarItem(
            label: 'Settings',
            icon: IconButton(
              icon: Icon(
                Icons.settings_rounded,
                color: AppColors.darkGrey,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  AppAnimations.pageTransitionAnimationBuilder(
                    SettingsPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      //Scaffold body
      body: MainPageContainer(
        children: [
          UserListsHomePageWidget(),
          RecentTransactionsHomePage(),
          CartesianLastMonthStatistics(),
        ],
      ),
    );
  }
}
