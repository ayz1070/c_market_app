import 'package:c_market_app/presentation/pages/cart/cart_page.dart';
import 'package:c_market_app/presentation/pages/splash/splash_page.dart';
import 'package:c_market_app/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
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
