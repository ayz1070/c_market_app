import 'package:c_market_app/presentation/pages/detail/w_big_stars.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BigReviewBox extends StatelessWidget {
  final double reviewAvg;
  final int starCount;

  const BigReviewBox({super.key, required this.reviewAvg, required this.starCount});

  @override
  Widget build(BuildContext context) {
    return // 전체 리뷰
      Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BigStars(starCount: starCount),
            Padding(padding: EdgeInsets.only(top: 10)),
            // 평점
            '$reviewAvg/5.0'.text.bold.size(30).make(),

          ],
        ),
      );
  }
}
