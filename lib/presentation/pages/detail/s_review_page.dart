import 'package:flutter/material.dart';

import 'w_big_stars.dart';
import 'w_detail_app_bar.dart';
import 'w_review_app_bar.dart';
import 'w_review_box.dart';

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
          // 전체 리뷰
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BigStars(starCount: 5),
                Padding(padding: EdgeInsets.only(top: 10)),
                // 평점
                Text(
                  '5.0/5.0',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),

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
