import 'package:c_market_app/data/data_source/mock/display/display_mock_api.dart';
import 'package:c_market_app/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

void main() async{
  final data = await DisplayMockApi().getMenusByMallType('market');
  print(data);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router
    );
  }
}
