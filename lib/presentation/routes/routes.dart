import 'package:c_market_app/presentation/main/main_screen.dart';
import 'package:c_market_app/presentation/pages/cart/cart_page.dart';
import 'package:c_market_app/presentation/pages/detail/detail_page.dart';
import 'package:c_market_app/presentation/pages/splash/splash_page.dart';
import 'package:c_market_app/presentation/routes/route_path.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
  routes: [
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
      path: RoutePath.main,
      name: 'home',
      builder: (context, state) => const MainScreen(),
    ),
  ],
  initialLocation: '/splash',
);

