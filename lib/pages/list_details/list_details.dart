import 'package:flutter/material.dart';
import 'package:shopmate/pages/list_details/widgets/item_tile_list_details_page.dart';
import 'package:shopmate/resources/app_resources.dart';
import 'package:shopmate/shared/ui_effects/scroll_animation.dart';

class ListDetailsPage extends StatefulWidget {
  const ListDetailsPage();

  @override
  State<ListDetailsPage> createState() => _ListDetailsPageState();
}

class _ListDetailsPageState extends State<ListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final double height = mq.size.height;
    // final double width = mq.size.width;

    //Temporary list of args for listview.builder
    //This will work very similar in the future
    final List<Map> listItems = [
      {
        'itemName': 'Bread',
        'isChecked': false,
      },
      {
        'itemName': 'Water',
        'isChecked': true,
      },
      {
        'itemName': 'Vegetables',
        'isChecked': true,
      },
      {
        'itemName': 'Pizza',
        'isChecked': false,
      },
      {
        'itemName': 'Hamburgers',
        'isChecked': true,
      },
      {
        'itemName': 'Fries',
        'isChecked': false,
      },
      {
        'itemName': 'Bread',
        'isChecked': false,
      },
      {
        'itemName': 'Water',
        'isChecked': true,
      },
      {
        'itemName': 'Vegetables',
        'isChecked': true,
      },
      {
        'itemName': 'Pizza',
        'isChecked': false,
      },
      {
        'itemName': 'Hamburgers',
        'isChecked': true,
      },
      {
        'itemName': 'Fries',
        'isChecked': false,
      },
      {
        'itemName': 'Bread',
        'isChecked': false,
      },
      {
        'itemName': 'Water',
        'isChecked': true,
      },
      {
        'itemName': 'Vegetables',
        'isChecked': true,
      },
      {
        'itemName': 'Pizza',
        'isChecked': false,
      },
      {
        'itemName': 'Hamburgers',
        'isChecked': true,
      },
      {
        'itemName': 'Fries',
        'isChecked': false,
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        centerTitle: AppConstants.isAppBarTitleCentered,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            AppIcons.closePage,
            color: AppColors.darkGrey,
          ),
        ),
        title: Text(
          'Grocery Store',
          style: AppTextStyles.appBarTitle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: AppColors.darkGrey,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: height,
        child: ScrollAnimation(
          child: ListView.builder(
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return ItemTileListDetailsPage(
                item: listItems[index]['itemName'],
                isChecked: listItems[index]['isChecked'],
              );
            },
          ),
        ),
      ),
    );
  }
}
