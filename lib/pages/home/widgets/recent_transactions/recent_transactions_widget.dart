import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/pages/home/widgets/recent_transactions/recent_transactions_list_tile.dart';
import 'package:shopmate/shared/widgets/wrappers/section_title_wrapper.dart';

class RecentTransactionsHomePage extends StatefulWidget {
  const RecentTransactionsHomePage();

  @override
  State<RecentTransactionsHomePage> createState() =>
      _RecentTransactionsHomePageState();
}

class _RecentTransactionsHomePageState
    extends State<RecentTransactionsHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      margin: AppConstants.sectionMargin,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          SectionTitleWrapper(
            text: Text(
              'Recent Transactions',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
                fontSize: AppFontSizes.fsMedium + 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          RecentTransactionsListTile(
            shopName: 'Walmart',
            date: '23/08/2023',
            amountSpent: '21.25',
            width: width,
          ),
          RecentTransactionsListTile(
            shopName: 'Shopping Centre',
            date: '11/05/2023',
            amountSpent: '61.22',
            width: width,
          ),
          RecentTransactionsListTile(
            shopName: '24/7',
            date: '22/03/2023',
            amountSpent: '77.01',
            width: width,
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
