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
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Text(title),
      actions: [

      ],
    );
  }
}
