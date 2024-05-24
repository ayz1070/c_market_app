import 'package:c_market_app/presentation/pages/cart/cart_page.dart';
import 'package:c_market_app/presentation/pages/home/home_page.dart';
import 'package:c_market_app/presentation/pages/splash/splash_page.dart';
import 'package:c_market_app/presentation/routes/route_path.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: RoutePath.splash,
    name: 'splash',
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: RoutePath.cart,
    name: 'cart',
    builder: (context, state) => const CartPage(),
  ),
  GoRoute(
    path: RoutePath.home,
    name: 'home',
    builder: (context, state) => const HomePage(),
  ),
], initialLocation: '/splash'
);