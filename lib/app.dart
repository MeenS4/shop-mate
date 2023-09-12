import 'package:flutter/material.dart';
import 'package:shopmate/pages/home/home_page.dart';
import 'package:shopmate/resources/app_resources.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Mate',
      home: HomePage(),
      theme: ThemeData(fontFamily: AppTextStyles.appFont),
    );
  }
}
