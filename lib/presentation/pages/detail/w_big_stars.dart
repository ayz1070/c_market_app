import 'package:flutter/material.dart';

class BigStars extends StatefulWidget {
  final int starCount;

  const BigStars({super.key, required this.starCount});

  @override
  State<BigStars> createState() => _BigStarsState();
}

class _BigStarsState extends State<BigStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.starCount, (index) {
        return Icon(
          index < widget.starCount ? Icons.star : Icons.star_border,
          color: Colors.amber,
          size: 50,
        );
      }),
    );
  }
}
