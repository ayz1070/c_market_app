import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'customer_service_tabbar_screen.dart';
import 'delivery_address_screen.dart';
import 'package:c_market_app/presentation/pages/user/set_alarm_screen.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  // final String userImage;
  // final String username;

  //final user = FirebaseAuth.instance.currentUser!;
  //final userData = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '마이 페이지',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://flexible.img.hani.co.kr/flexible/normal/960/960/imgdb/resize/2019/0121/00501111_20190121.JPG')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('jun',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('구매',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(alignment: Alignment.centerLeft),
              child: Text('주문목록'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(alignment: Alignment.centerLeft),
              child: const Text('취소/반품/교환목록'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => DeliveryAddressScreen()));
                },
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('배송지 관리')),
            SizedBox(height: 10),
            Text('고객센터',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => CustomerServiceTabbarScreen()));
                },
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('공지사항')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => CustomerServiceTabbarScreen()));
                },
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('FAQ')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => CustomerServiceTabbarScreen()));
                },
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('1:1문의')),
            SizedBox(height: 10),
            Text('설정',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => SetAlarmScreen()));
                },
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('알림 설정')),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('로그아웃')),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                child: Text('회원 탈퇴')),
          ],
        ),
      ),
    );
  }
}
