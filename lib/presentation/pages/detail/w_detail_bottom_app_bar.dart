import 'package:flutter/material.dart';

import '../../../core/theme/constant/app_colors.dart';
import '../../widget/w_long_button.dart';

class DetailBottomAppBar extends StatelessWidget {
  const DetailBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: const Center(
        child:Text(
          "구매하기",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
