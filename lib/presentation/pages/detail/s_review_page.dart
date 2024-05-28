import 'package:flutter/material.dart';

import 'w_big_stars.dart';
import 'w_detail_app_bar.dart';
import 'w_review_app_bar.dart';
import 'w_review_box.dart';
import 'w_review_box_big.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewAppBar(
          title: '리뷰',
      ),
      body: ListView(
        children: [
          BigReviewBox(reviewAvg: 5, starCount: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '전체 리뷰',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(

            child: ListView.builder(

              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {

                return ReviewBox(
                    userName: '안영준',
                    date: '24/05/28',
                    comment: '발림성이 좋아요!!',
                    starCount: 3);
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
