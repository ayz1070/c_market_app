import 'package:flutter/material.dart';

class SmallStars extends StatefulWidget {
  final int starCount;


  const SmallStars({super.key, required this.starCount});

  @override
  State<SmallStars> createState() => _SmallStarsState();
}

class _SmallStarsState extends State<SmallStars> {
  @override
  Widget build(BuildContext context) {
    return // 별점 아이콘들
      Row(
        children: List.generate(widget.starCount, (index) {
          return Icon(
            index < widget.starCount ? Icons.star : Icons.star_border,
            color: Colors.amber,
            size: 15,
          );
        }),
      );
  }
}
