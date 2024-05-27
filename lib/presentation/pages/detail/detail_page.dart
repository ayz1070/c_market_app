import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // 뒤로 가기 버튼 동작
          },
        ),
        title: const Text('상품'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              // 오른쪽 아이콘 버튼 동작
            },
          ),
        ],
      ),
      // 바디
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // 메인 상품 이미지
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/test_image.jpg',
                  width: 400,
                  height: 400,
                ),
              ],
            ),
            // 상품명
            Text(
              '[특가할인/닥터지] 레드 블레미쉬 수분 크림',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            // 평점
            Row(
              children: [
                // 평점 별
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text('4.7 리뷰(3)'),
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
                  '30,000',
                  style: TextStyle(
                      fontSize: 15, decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            // 가격 텍스트
            Row(
              children: [
                Text(
                  '50% ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '15,000원',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            Divider(thickness: 5,),
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
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Image.asset('assets/image/test_image.jpg');
                },
              ),
            ),
            // 상품 정보 더보기 버튼
            ElevatedButton(
              onPressed: () {},
              child: Text(
                '상품정보 더 보기',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDCAE96),
              ),
            ),
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
            Divider(),
            // 리뷰 텍스트
            Text(
              '리뷰',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            // 유저 이름 텍스트
            Text('안영준'),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
            // 날짜 텍스트
            Text('24/05/27',style: TextStyle(fontSize: 10),),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
            // 별점 아이콘들
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < 5 ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 15,
                );
              }),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
            // 후기 텍스트
            Text('너무 잘 썼습니다!!!'),
            // 리뷰 더 더 보기 버튼
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                '리뷰 더 보기',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDCAE96),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
