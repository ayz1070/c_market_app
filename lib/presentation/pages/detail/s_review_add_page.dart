import 'package:flutter/material.dart';

import 'w_add_app_bar.dart';
import 'w_review_box_big.dart';
import 'package:velocity_x/velocity_x.dart';

class ReviewAddPage extends StatefulWidget {
  const ReviewAddPage({super.key});

  @override
  State<ReviewAddPage> createState() => _ReviewAddPageState();
}

class _ReviewAddPageState extends State<ReviewAddPage> {
  int reviewScore = 5;
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
                  '[특가할인/닥터지] 레드 블레미쉬 수분 크림',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                // 날짜 텍스트
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  '24/05/28',
                  style: TextStyle(fontSize: 10),
                ),
                // 이름 텍스트
                Padding(padding: EdgeInsets.only(top: 8)),
                Text('안영준'),
                // 리뷰 입력 텍스트 필드
                Padding(padding: EdgeInsets.only(top: 15)),
                SizedBox(
                  height: 500,
                  child: TextField(
                    maxLines: 10,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    autofocus: true,
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
    );
  }
}
