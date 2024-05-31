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
      children: List.generate(5, (index) {
        return Icon(
          color: index <= widget.starCount ? Colors.orange : Colors.grey,
          size: 50,
          Icons.star,
        );
      }),
    );
  }
}
