import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/widgets/wrappers/section_title_wrapper.dart';

class CartesianLastMonthStatistics extends StatefulWidget {
  @override
  State<CartesianLastMonthStatistics> createState() =>
      _CartesianLastMonthStatisticsState();
}

class _CartesianLastMonthStatisticsState
    extends State<CartesianLastMonthStatistics> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;

    return Container(
      height: height * 0.35,
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
              'Last Month',
              style: TextStyle(
                fontSize: AppFontSizes.fsSmallPlus,
                color: AppColors.lightGrey,
              ),
            ),
          ),
          SizedBox(height: 5),
          SectionTitleWrapper(
            text: Text(
              'April',
              style: TextStyle(
                fontSize: AppFontSizes.fsMedium + 1,
                fontWeight: FontWeight.w600,
                color: AppColors.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
