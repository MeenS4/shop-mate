import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class ItemListTileSearchProductsPage extends StatefulWidget {
  final String item;
  final bool isChecked;
  final Color mainTheme;
  const ItemListTileSearchProductsPage({
    required String this.item,
    required bool this.isChecked,
    Color this.mainTheme = AppColors.primaryBlue,
  });

  @override
  State<ItemListTileSearchProductsPage> createState() =>
      _ItemListTileSearchProductsPageState();
}

class _ItemListTileSearchProductsPageState
    extends State<ItemListTileSearchProductsPage> {
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
    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final String item = widget.item;

    // This function generates and returns an Icon widget based on the value of isChecked.
    // If isChecked is true, it returns a checkmark icon in the color specified by widget.mainTheme.
    // If isChecked is false, it returns a plus sign icon in the color AppColors.darkGrey.
    Icon genIcon() {
      if (isChecked) {
        return Icon(
          Icons.check_rounded,
          color: widget.mainTheme,
        );
      } else {
        return Icon(
          Icons.add_rounded,
          color: AppColors.darkGrey,
        );
      }
    }

    // This function toggles the value of isChecked using the setState method to trigger a UI update.
    // It negates the current value of isChecked, effectively changing it from true to false or vice versa.
    void toggleCheckButton() {
      setState(() {
        isChecked = !isChecked;
      });
    }

    return Container(
      width: width,
      child: Material(
        color: AppColors.backgroundColor,
        child: InkWell(
          onTap: () {},
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: AppColors.dividerColor,
                ),
              ),
            ),
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        item,
                        style: TextStyle(
                          color: AppColors.darkGrey,
                          fontSize: AppFontSizes.fsSmallPlus,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          toggleCheckButton();
                        },
                        icon: genIcon(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
