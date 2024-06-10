import 'package:flutter/material.dart';

import 's_review_add_page.dart';

class ReviewAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ReviewAppBar({super.key, required this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios)),
      title: Text(title),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => ReviewAddPage(),
                  fullscreenDialog: true));
            },
            icon: Icon(Icons.add_box_outlined)),
      ],
    );
  }
}
