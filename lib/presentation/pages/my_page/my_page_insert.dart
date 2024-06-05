import 'package:flutter/material.dart';

import '../../../core/theme/constant/app_colors.dart';

void main(){
  runApp(const MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My page",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.contentPrimary),

          useMaterial3: true
      ),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.primary,
            title: const Text("주문 목록")
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset('nav-home-on.svg'),
            ],
          ),
        ),
      ),
    );
  }
}