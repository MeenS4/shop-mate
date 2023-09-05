import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopmate/pages/home/widgets/user_lists/user_lists.dart';
import 'package:shopmate/pages/list_details/list_details.dart';
import 'package:shopmate/pages/settings/settings_page.dart';
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
    final mq = MediaQuery.of(context);

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
              onPressed: () {},
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
          UserLists(),
          RecentTransactionsHomePage(),
          CartesianLastMonthStatistics(),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Center(
              child: Ink(
                width: mq.size.width * 0.42,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'listName',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: AppFontSizes.fsSmallPlus,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
