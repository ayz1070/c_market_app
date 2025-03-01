import 'package:velocity_x/velocity_x.dart';

import '../../../domain/model/display/display.model.dart';
import '../../../domain/model/display/review/review.dart';
import 's_review_page.dart';
import 'w_detail_app_bar.dart';
import 'w_review_box.dart';
import '../../widget/w_long_button.dart';
import 'package:flutter/material.dart';

import 'w_detail_bottom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final ProductInfo productInfo;
  final List<Review> reviewList;

  const DetailPage(
      {super.key, required this.productInfo, required this.reviewList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: DetailAppBar(
        title: '상품',
      ),
      // 바디
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // 메인 상품 이미지
            Container(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.network(
                  productInfo.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 상품명
            Text(
              '${productInfo.title}',
              style: TextStyle(
                fontSize: 25,
              ),
            ).pLTRB(0, 10, 0, 10),
            // 평점
            Row(
              children: [
                // 평점 별
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text('4.7 리뷰(${productInfo.reviewCount})'),
              ],
            ),
            // 첫구매가 텍스트
            Row(
              children: [
                // 첫구매가
                Text(
                  '첫구매가 ',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                // 첫가격
                Text(
                  '${productInfo.originalPrice}',
                  style: TextStyle(
                      fontSize: 15, decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            // 가격 텍스트
            Row(
              children: [
                Text(
                  '${productInfo.discountRate}% ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '${productInfo.price}원',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            Divider(
              thickness: 5,
            ),
            // 상품 정보 텍스트
            Text(
              '상품 정보',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            // 상품 상세 이미지 리스트
            Container(
              child: Image.asset(
                'assets/image/img_product_detail2.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            // 상품 정보 더보기 버튼
            LongButton('상품정보 더 보기', onTap: () {}),
            Divider(),
            // 성분 텍스트
            Text(
              '성분',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            // 성분 내용 텍스트
            Text(
              '정제수, 글리세린, 부틸렌글라이콜, C13-16이소파라핀, 나이아신아마이드, C12-14아이소파라핀, 1,2-헥산디올, 하이드로제네이티드폴리데센, 펜틸렌글라이콜, 비닐디메치콘, 카프릴릴메치콘, 하이드록시에칠아크릴레이트/소듐아크릴로일디메칠타우레이트코폴리머, 판테놀, 아크릴레이트/C10-30알킬아크릴레이트크로스폴리머, 디메치콘올, 폴리메칠실세스퀴옥산, 트로메타민, 디포타슘글리시리제이트, 글리세릴아크릴레이트/아크릴릭애씨드코폴리머, 에칠헥실글리세린, 잔탄검, 디소듐이디티에이, 베타-글루칸, 병풀추출물, 마데카소사이드, 사과추출물, 에피갈로카테킨갈레이트, 아시아티코사이드, 아시아틱애씨드, 마데카식애씨드',
            ),

            ReviewBox(
              userName: '안영준',
              date: '${reviewList.first.date}',
              comment: '${reviewList.first.content}',
              starCount: reviewList.first.score.toInt(),
            ),
            // 리뷰 더 더 보기 버튼
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            LongButton(
              '리뷰 더 보기',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ReviewPage(
                          productInfo: productInfo,
                          reviewList: reviewList,
                        ),
                    fullscreenDialog: true));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        child: SafeArea(
          child: DetailBottomAppBar(),
        ),
      ),
    );
  }
}
