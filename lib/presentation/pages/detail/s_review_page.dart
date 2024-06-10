import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/review_bloc.dart';
import 'w_big_stars.dart';
import 'w_detail_app_bar.dart';
import 'w_review_app_bar.dart';
import 'w_review_box.dart';
import 'w_review_box_big.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ReviewBloc();
      },
      child: Scaffold(
        appBar: ReviewAppBar(
            title: '리뷰',
        ),
        body: ListView(
          children: [
            BigReviewBox(reviewAvg: 4, starCount: 4,),
      
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
      
              child: ListView(

                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ReviewBox(
                  userName: '안영준',
                  date: '24/05/28',
                  comment: '발림성이 좋아요!!',
                  starCount: 5),
                  ReviewBox(
                      userName: '이경수',
                      date: '24/05/28',
                      comment: '제 피부에는 맞질 않네요...',
                      starCount: 3),

                  ReviewBox(
                      userName: '방정묵',
                      date: '24/05/28',
                      comment: '만족합니다!!',
                      starCount: 4),

                  ReviewBox(
                      userName: '강민주',
                      date: '24/05/28',
                      comment: '가격이 저렴하네요!!!!',
                      starCount: 5),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
