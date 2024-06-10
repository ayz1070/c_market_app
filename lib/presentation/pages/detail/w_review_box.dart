import 'w_small_stars.dart';
import 'package:flutter/material.dart';

class ReviewBox extends StatelessWidget {
  final String userName;
  final String date;
  final String comment;
  final int starCount;

  const ReviewBox({super.key, required this.userName, required this.date, required this.comment, required this.starCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          // 유저 이름 텍스트
          Text('${userName}'),
          Padding(padding: const EdgeInsets.only(bottom: 5)),
          // 날짜 텍스트
          Text(
            '$date',
            style: TextStyle(fontSize: 10),
          ),
          Padding(padding: const EdgeInsets.only(bottom: 5)),
          // 별점 아이콘들
          SmallStars(starCount: starCount),
          Padding(padding: const EdgeInsets.only(bottom: 5)),
          // 후기 텍스트
          Text('$comment'),
        ],
      ),
    );
  }
}
