import 'package:flutter/material.dart';

class OrderListDetailScreen extends StatelessWidget {
  const OrderListDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('주문지 관리'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Text('변우석', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    //width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDCAE96), width: 1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "기본 배송지",
                      style: TextStyle(color: Color(0xFFDCAE96), fontSize: 12),
                    ),
                  ),
                ],
              ),
              subtitle: Text('(04614) 서울특별시 중구 퇴계로 324'),
              trailing: Wrap(
                spacing: 6, // space between two icons
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    iconSize: 30.0, // desired size
                    padding: EdgeInsets.zero,
                    constraints:
                    const BoxConstraints(), // override default min size of 48px
                    style: const ButtonStyle(
                      tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // the '2023' part
                    ),
                    icon: const Icon(Icons.edit_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 30.0, // desired size
                    padding: EdgeInsets.zero,
                    constraints:
                    const BoxConstraints(), // override default min size of 48px
                    style: const ButtonStyle(
                      tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // the '2023' part
                    ),
                    icon: const Icon(Icons.delete_sweep_outlined),
                  ),
                ],
              ),
            ),
            Divider(height: 0),
            ListTile(
              title: Text('변우석', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('(04614) 서울특별시 중구 퇴계로 324 성우빌딩 10층'),
              trailing: Wrap(
                spacing: 6, // space between two icons
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    iconSize: 30.0, // desired size
                    padding: EdgeInsets.zero,
                    constraints:
                    const BoxConstraints(), // override default min size of 48px
                    style: const ButtonStyle(
                      tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // the '2023' part
                    ),
                    icon: const Icon(Icons.edit_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 30.0, // desired size
                    padding: EdgeInsets.zero,
                    constraints:
                    const BoxConstraints(), // override default min size of 48px
                    style: const ButtonStyle(
                      tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // the '2023' part
                    ),
                    icon: const Icon(Icons.delete_sweep_outlined),
                  ),
                ],
              ),
            ),
            Divider(height: 0),
            ListTile(
              title: Text('변우석', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('(04614) 서울특별시 중구 퇴계로 324 성우빌딩 10층'),
              trailing: Wrap(
                spacing: 6, // space between two icons
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    iconSize: 30.0, // desired size
                    padding: EdgeInsets.zero,
                    constraints:
                    const BoxConstraints(), // override default min size of 48px
                    style: const ButtonStyle(
                      tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // the '2023' part
                    ),
                    icon: const Icon(Icons.edit_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 30.0, // desired size
                    padding: EdgeInsets.zero,
                    constraints:
                    const BoxConstraints(), // override default min size of 48px
                    style: const ButtonStyle(
                      tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // the '2023' part
                    ),
                    icon: const Icon(Icons.delete_sweep_outlined),
                  ),
                ],
              ),
            ),
            Divider(height: 0),
          ],
        ),
      ),
    );
  }
}
