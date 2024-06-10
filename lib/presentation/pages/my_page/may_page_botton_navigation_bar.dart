import 'package:flutter/material.dart';

class MayPageBottonNavigationBar extends StatelessWidget {
  const MayPageBottonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: MayPageBottonNavigationBar(),
    );
  }
}

class MyPageBottomNavigationBar extends StatefulWidget {
  const MyPageBottomNavigationBar({super.key});

  @override
  State<MyPageBottomNavigationBar> createState() => _MyPageBottomNavigationBarState();
}

class _MyPageBottomNavigationBarState extends State<MyPageBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
