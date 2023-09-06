import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class ItemTileListDetailsPage extends StatefulWidget {
  final String item;

  bool isChecked;

  ItemTileListDetailsPage({
    required String this.item,
    required bool this.isChecked,
  });

  @override
  State<ItemTileListDetailsPage> createState() =>
      _ItemTileListDetailsPageState();
}

class _ItemTileListDetailsPageState extends State<ItemTileListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final item = widget.item;
    bool isChecked = widget.isChecked;

    Icon genIcon() {
      if (isChecked) {
        return Icon(
          Icons.check_circle_rounded,
          color: AppColors.primaryOrange,
        );
      } else {
        return Icon(
          Icons.circle_outlined,
          color: AppColors.primaryOrange,
        );
      }
    }

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
            onPressed: () {
              setState(() {
                print(isChecked);
                isChecked = !isChecked;
                print(isChecked);
              });
            },
            icon: genIcon(),
          ),
          // SizedBox(width: 10),
          Text(
            item,
            style: TextStyle(
              color: AppColors.darkGrey,
              fontSize: AppFontSizes.fsSmallPlus,
            ),
          ),
        ],
      ),
    );
  }
}
