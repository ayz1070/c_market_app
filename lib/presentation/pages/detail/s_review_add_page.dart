import 'package:c_market_app/presentation/pages/detail/test/test_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/model/display/product_info/product_info.model.dart';
import '../../../domain/model/display/review/review.dart';
import 'w_add_app_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class ReviewAddPage extends StatefulWidget {
  final ProductInfo productInfo;
  final List<Review> reviewList;

  const ReviewAddPage(
      {super.key, required this.productInfo, required this.reviewList});

  @override
  State<ReviewAddPage> createState() => _ReviewAddPageState();
}

class _ReviewAddPageState extends State<ReviewAddPage> {
  int reviewScore = 5;
  String currentDate = DateFormat('yy/MM/dd').format(DateTime.now());
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddAppBar(
        title: '리뷰',
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    reviewScore = index;
                  });
                },
                icon: Icon(
                  Icons.star,
                  color: index <= reviewScore ? Colors.orange : Colors.grey,
                  size: 50,
                ),
              );
            }),
          ).pLTRB(0, 30, 0, 30),
          // 작성 부분
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 상품명 텍스트
                Text(
                  '${widget.productInfo.title}',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                // 날짜 텍스트
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  '${currentDate}',
                  style: TextStyle(fontSize: 10),
                ),
                // 이름 텍스트
                Padding(padding: EdgeInsets.only(top: 8)),
                // 리뷰 입력 텍스트 필드
                Padding(padding: EdgeInsets.only(top: 15)),
                SizedBox(
                  height: 500,
                  child: TextField(
                    maxLines: 10,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    autofocus: true,
                    controller: _contentController,
                    decoration: InputDecoration(
                      hintText: '리뷰를 작성하세요.',
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          var reviewData = Review(
              id: 0,
              nickName: '안영준',
              content: '${_contentController.text}',
              score: reviewScore.toDouble(),
              date: currentDate);
          TestData.testReviewList.insert(0,reviewData);
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
