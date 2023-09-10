import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/ui_effects/splash_effect_wrapper.dart';

class ItemTileListDetailsPage extends StatefulWidget {
  final String item;
  final bool isChecked;

  ItemTileListDetailsPage({
    required String this.item,
    required bool this.isChecked,
  });

  @override
  State<ItemTileListDetailsPage> createState() =>
      _ItemTileListDetailsPageState();
}

class _ItemTileListDetailsPageState extends State<ItemTileListDetailsPage> {
  bool isWidgetInit = false;
  bool isChecked = false;

  @override
  void didChangeDependencies() {
    if (!isWidgetInit) {
      isWidgetInit = !isWidgetInit;
      isChecked = widget.isChecked;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final item = widget.item;

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

    void toggleCheckButton() {
      setState(() {
        isChecked = !isChecked;
      });
    }

    return SplashEffectWrapper(
      onTapFunc: () {},
      color: AppColors.backgroundColor,
      borderRadius: 0,
      child: Container(
        height: height * 0.1,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.dividerColor, width: 1),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                toggleCheckButton();
              },
              icon: genIcon(),
            ),
            Text(
              item,
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: AppFontSizes.fsSmallPlus,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
