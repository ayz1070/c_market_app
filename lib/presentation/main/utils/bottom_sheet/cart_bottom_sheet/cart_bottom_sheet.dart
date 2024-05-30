import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool?> cartBottomSheet(BuildContext context) {
  return showModalBottomSheet(context: context, builder: (_) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text('bottom'),
              )
            ],
          ),
        ),
    );
  });
}