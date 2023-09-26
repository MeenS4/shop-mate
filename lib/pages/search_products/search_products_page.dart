import 'package:flutter/material.dart';
import 'package:shopmate/pages/search_products/widgets/item_list_tile_search_products.dart';
import 'package:shopmate/pages/search_products/widgets/search_bar.dart';
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
    final MediaQueryData mq = MediaQuery.of(context);
    final double height = mq.size.height;
    // final double width = mq.size.width;

    final List<String> foodProducts = [
      "Apple",
      "Wheat bread",
      "Pasta",
      "Rice",
      "Plain yogurt",
      "Chicken",
      "Tomatoe",
      "Banana",
      "Spinach",
      "Milk",
      "Egg",
      "Cheddar cheese",
      "Olive oil",
      "Sugar",
      "Chocolate",
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 2,
        title: AddProductsSearchBar(),
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
        isPageScrollable: false,
        resetFocusOnClick: true,
        children: [
          Container(
            height: height,
            padding: EdgeInsets.only(bottom: 40),
            child: ListView.builder(
              itemCount: foodProducts.length,
              itemBuilder: (context, index) {
                return ItemListTileSearchProductsPage(
                  item: foodProducts[index],
                  isChecked: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
