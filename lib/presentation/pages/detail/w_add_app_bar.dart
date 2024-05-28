import 'package:c_market_app/presentation/pages/detail/s_review_page.dart';
import 'package:flutter/material.dart';

class AddAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;


  const AddAppBar({super.key, required this.title});

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
          icon: Icon(Icons.check),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => ReviewPage(),
                fullscreenDialog: true));

          },
        ),
      ],
    );
  }
}