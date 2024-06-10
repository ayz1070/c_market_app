import 'package:c_market_app/presentation/pages/detail/s_review_add_page.dart';
import 'package:c_market_app/presentation/pages/detail/test/test_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/model/display/display.model.dart';
import '../../../domain/model/display/review/review.dart';
import 'bloc/review_bloc.dart';

import 'w_review_app_bar.dart';
import 'w_review_box.dart';
import 'w_review_box_big.dart';

class ReviewPage extends StatelessWidget {
  final ProductInfo productInfo;
  final List<Review> reviewList;

  const ReviewPage(
      {super.key, required this.productInfo, required this.reviewList});

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
            BigReviewBox(
              reviewAvg: TestData.getTestAverage(),
              starCount: (TestData.getTestAverage()-0.99).toInt(),
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
                itemCount: reviewList.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = reviewList[index];
                  return ReviewBox(
                    userName: '${item.nickName}',
                    date: '${item.date}',
                    comment: '${item.content}',
                    starCount: item.score.toInt(),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => ReviewAddPage(
                      productInfo: productInfo,
                      reviewList: reviewList,
                    ),
                fullscreenDialog: true));
          },
        ),
      ),
    );
  }
}
