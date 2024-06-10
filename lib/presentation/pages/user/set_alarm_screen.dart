import 'package:flutter/material.dart';

class SetAlarmScreen extends StatefulWidget {
  const SetAlarmScreen({super.key});

  @override
  State<SetAlarmScreen> createState() => _SetAlarmScreenState();
}

class _SetAlarmScreenState extends State<SetAlarmScreen> {
  bool _orderNotify = true;
  bool _cancelNotify = true;
  bool _refundNotify = true;
  bool _exchangeNotify = true;
  bool _outOfStockNotify = true;
  bool _marketingNotify = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('알림 설정'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('주문 접수 알림',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('주문이 접수되면 안내됩니다'),
              trailing: Switch(
                  value: _orderNotify,
                  activeColor: Color(0xFFDCAE96),
                  onChanged: (bool value) {
                    setState(() {
                      _orderNotify = value;
                    });
                  }),
            ),
            ListTile(
              title: Text('취소 접수 알림',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('취소가 접수되면 안내됩니다'),
              trailing: Switch(
                  value: _cancelNotify,
                  activeColor: Color(0xFFDCAE96),
                  onChanged: (bool value) {
                    setState(() {
                      _cancelNotify = value;
                    });
                  }),
            ),
            ListTile(
              title: Text('환불 접수 알림',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('환불이 접수되면 안내됩니다'),
              trailing: Switch(
                  value: _refundNotify,
                  activeColor: Color(0xFFDCAE96),
                  onChanged: (bool value) {
                    setState(() {
                      _refundNotify = value;
                    });
                  }),
            ),
            ListTile(
              title: Text('교환 접수 알림',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('교환이 접수되면 안내됩니다'),
              trailing: Switch(
                  value: _exchangeNotify,
                  activeColor: Color(0xFFDCAE96),
                  onChanged: (bool value) {
                    setState(() {
                      _exchangeNotify = value;
                    });
                  }),
            ),
            ListTile(
              title: Text('상품 품절 알림',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('등록된 상품이 품절되면 안내됩니다'),
              trailing: Switch(
                  value: _outOfStockNotify,
                  activeColor: Color(0xFFDCAE96),
                  onChanged: (bool value) {
                    setState(() {
                      _outOfStockNotify = value;
                    });
                  }),
            ),
            ListTile(
              title:
                  Text('마케팅 알림', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('주문이 접수되면 안내됩니다'),
              trailing: Switch(
                  value: _marketingNotify,
                  activeColor: Color(0xFFDCAE96),
                  onChanged: (bool value) {
                    setState(() {
                      _marketingNotify = value;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
