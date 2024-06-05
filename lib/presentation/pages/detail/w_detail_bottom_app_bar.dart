import 'package:flutter/material.dart';

import '../../../core/theme/constant/app_colors.dart';

class DetailBottomAppBar extends StatelessWidget {
  const DetailBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primary),
      height: 72,
      child: const Center(
        child: Text(
          "구매하기",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
