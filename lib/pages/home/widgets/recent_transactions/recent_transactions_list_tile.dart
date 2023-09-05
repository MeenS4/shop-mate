import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class RecentTransactionsListTile extends StatefulWidget {
  final double width;
  final String shopName;
  final String date;
  final String amountSpent;

  const RecentTransactionsListTile({
    required this.shopName,
    required this.date,
    required this.amountSpent,
    required this.width,
  });

  @override
  State<RecentTransactionsListTile> createState() =>
      _RecentTransactionsListTileState();
}

class _RecentTransactionsListTileState
    extends State<RecentTransactionsListTile> {
  @override
  Widget build(BuildContext context) {
    final double width = widget.width;

    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 7.5, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.shopName,
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: AppFontSizes.fsSmallPlus,
                ),
              ),
              SizedBox(height: 2),
              Text(
                widget.date,
                style: TextStyle(
                  color: AppColors.lightGrey,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            '\$${widget.amountSpent}',
            style: TextStyle(
              color: AppColors.darkGrey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
