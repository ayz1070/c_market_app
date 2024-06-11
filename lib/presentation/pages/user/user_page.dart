import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/route_path.dart';
import 'customer_service_tabbar_screen.dart';
import 'delivery_address_screen.dart';
import 'package:c_market_app/presentation/pages/user/set_alarm_screen.dart';

import 'login_screen.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  final currentUser = FirebaseAuth.instance.currentUser!;

  getUserInfo() async {
    final result = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .get();
    return result.data();
  }

  // String userImage =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUserInfo(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '마이 페이지',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        //'https://flexible.img.hani.co.kr/flexible/normal/960/960/imgdb/resize/2019/0121/00501111_20190121.JPG')),
                                        (snapshot.data
                                            as Map)['user_image_url'])),
                                SizedBox(
                                  width: 10,
                                ),
                                Text((snapshot.data as Map)['user_nickname'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
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
                      ),
                      SizedBox(height: 20),
                      Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      SizedBox(height: 20),
                      Text('구매',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft),
                        child: Text('주문목록'),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft),
                        child: const Text('취소/반품/교환목록'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => DeliveryAddressScreen()));
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('배송지 관리')),
                      SizedBox(height: 10),
                      Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      SizedBox(height: 20),
                      Text('고객센터',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => CustomerServiceTabbarScreen(
                                    selectedIndex: 0)));
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('공지사항')),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => CustomerServiceTabbarScreen(
                                    selectedIndex: 1)));
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('FAQ')),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => CustomerServiceTabbarScreen(
                                    selectedIndex: 2)));
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('1:1문의')),
                      SizedBox(height: 10),
                      Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      SizedBox(height: 20),
                      Text('설정',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => SetAlarmScreen()));
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('알림 설정')),
                      TextButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                            context.push(RoutePath.login);
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('로그아웃')),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft),
                          child: Text('회원 탈퇴')),
                    ],
                  ),
                )
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
