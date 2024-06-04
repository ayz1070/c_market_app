import '../../core/theme/constant/app_colors.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const LongButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
      child: Text('$text', style: TextStyle(color: Colors.white)),
    );
  }
}
