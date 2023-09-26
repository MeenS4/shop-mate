import 'package:flutter/material.dart';
import 'package:shopmate/resources/app_resources.dart';

class AddProductsSearchBar extends StatefulWidget {
  const AddProductsSearchBar({super.key});

  @override
  State<AddProductsSearchBar> createState() => _AddProductsSearchBarState();
}

class _AddProductsSearchBarState extends State<AddProductsSearchBar> {
  @override
  Widget build(BuildContext context) {
    // final MediaQueryData mq = MediaQuery.of(context);
    // final double height = mq.size.height;
    // final double width = mq.size.width;

    return TextField(
      cursorColor: AppColors.primaryBlue,
      style: TextStyle(fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        // filled: true,
        // fillColor: AppColors.white,
        border: InputBorder.none,
        hintText: 'Search Products',
        hintStyle: TextStyle(
          color: AppColors.lightGrey,
        ),
      ),
    );
  }
}
