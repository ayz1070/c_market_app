import 'package:velocity_x/velocity_x.dart';

import '../../../../domain/model/display/review/review.dart';

class TestData{
  static List<Review> testReviewList = [
    Review(id: 1, nickName: "안영준", content: "너무 잘썼습니다!", score: 5, date: '24/06/07'),
    Review(id: 1, nickName: "이경수", content: "저한테는 별로 맞질 않네요...", score: 3, date: '24/06/05'),
    Review(id: 1, nickName: "방정묵", content: "평범합니다!", score: 4, date: '24/05/21'),
    Review(id: 1, nickName: "송상민", content: "지성인 저에게 딱 맞는 제품입니다!", score: 5, date: '24/05/16'),
    Review(id: 1, nickName: "서정림", content: "트러블이 생기네요...", score: 3, date: '24/05/14'),
  ];

  static double getTestAverage(){
    double testTotalScore = testReviewList.fold(0, (sum, review) => sum + review.score);
    return ((testTotalScore / testReviewList.length)*100).roundToDouble()/100;
  }

}