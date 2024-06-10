import 'package:flutter/material.dart';

class CustomerServiceTabbarScreen extends StatelessWidget {
  const CustomerServiceTabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('고객센터'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Color(0xFFDCAE96),
            labelColor: Color(0xFFDCAE96),
            tabs: [
              Tab(
                child: Text('공지사항'),
              ),
              Tab(
                child: Text('FAQ'),
              ),
              Tab(
                child: Text('1:1문의'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: [
                ExpansionTile(
                  title: Text(
                    '[공지] 공지제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  subtitle: Text('2024.05.20'),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n 공지사항입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[공지] 공지제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  subtitle: Text('2024.05.20'),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n 공지사항입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[공지] 공지제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  subtitle: Text('2024.05.20'),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n 공지사항입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[공지] 공지제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  subtitle: Text('2024.05.20'),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n 공지사항입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[공지] 공지제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  subtitle: Text('2024.05.20'),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n 공지사항입니다.'),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                ExpansionTile(
                  title: Text(
                    '[FAQ] FAQ제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n FAQ입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[FAQ] FAQ제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n FAQ입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[FAQ] FAQ제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n FAQ입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[FAQ] FAQ제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n FAQ입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    '[FAQ] FAQ제목',
                    style: TextStyle(color: Color(0xFFDCAE96)),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('안녕하세요 C-Market입니다\n\n FAQ입니다.'),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                ExpansionTile(
                  title: Row(
                    children: [
                      Text('상품문의'),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        //width: 80,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFDCAE96), width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          "답변 대기중",
                          style:
                              TextStyle(color: Color(0xFFDCAE96), fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('질문입니다\n질문내용입니다'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Row(
                    children: [
                      Text('상품문의'),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        //width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          "답변 완료",
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title:
                          Text('질문입니다\n질문내용입니다\n\n안녕하세요 C-Market입니다\n답변입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Row(
                    children: [
                      Text('상품문의'),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        //width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          "답변 완료",
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title:
                          Text('질문입니다\n질문내용입니다\n\n안녕하세요 C-Market입니다\n답변입니다.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Row(
                    children: [
                      Text('상품문의'),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        //width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          "답변 완료",
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  children: <Widget>[
                    ListTile(
                      title:
                          Text('질문입니다\n질문내용입니다\n\n안녕하세요 C-Market입니다\n답변입니다.'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
