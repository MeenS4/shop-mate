import 'package:flutter/material.dart';
import 'package:shopmate/pages/home/widgets/user_lists/user_lists_list_tile.dart';
import 'package:shopmate/shared/ui_effects/scroll_animation.dart';

class UserLists extends StatefulWidget {
  @override
  State<UserLists> createState() => _UserListsState();
}

class _UserListsState extends State<UserLists> {
  @override
  build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final double height = mq.size.height;
    final double width = mq.size.width;

    return Container(
      height: height * 0.14,
      margin: EdgeInsets.symmetric(vertical: 5),
      width: width,
      child: ScrollAnimation(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 5,
            ),
            UserListsListTile(mq: mq, listName: 'Walmart'),
            UserListsListTile(mq: mq, listName: 'Shopping Centre'),
            UserListsListTile(mq: mq, listName: '24/7'),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
