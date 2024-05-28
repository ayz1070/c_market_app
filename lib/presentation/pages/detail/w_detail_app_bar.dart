import 'package:flutter/material.dart';

import 's_review_page.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const DetailAppBar({super.key, required this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(Icons.home_outlined),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => ReviewPage(),
                fullscreenDialog: true));
          },
        ),
      ],
    );
  }
}
