import 'package:flutter/material.dart';

class WriteBox extends StatefulWidget {
  final String title;
  final String date;
  final String userName;

  const WriteBox({super.key, required this.title, required this.date, required this.userName});

  @override
  State<WriteBox> createState() => _WriteBoxState();
}

class _WriteBoxState extends State<WriteBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${widget.title}',),
        Text('${widget.date}'),
        Text('${widget.userName}'),


      ]
    );
  }
}
