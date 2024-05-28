import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Icon leftIcon;
  final Icon rightIcon;

  const DetailAppBar({super.key, required this.title, required this.leftIcon, required this.rightIcon});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: leftIcon,
        onPressed: () {

        },
      ),
      title: Text(title),
      actions: [
        IconButton(
          icon: rightIcon,
          onPressed: () {
            // 오른쪽 아이콘 버튼 동작
          },
        ),
      ],
    );
  }
}


