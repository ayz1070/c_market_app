import 'package:c_market_app/presentation/main/main_screen.dart';
import 'package:c_market_app/presentation/pages/cart/cart_page.dart';
import 'package:c_market_app/presentation/pages/detail/s_detail_page.dart';
import 'package:c_market_app/presentation/pages/splash/splash_page.dart';
import 'package:c_market_app/presentation/routes/route_path.dart';
import 'package:go_router/go_router.dart';

import '../pages/detail/s_review_add_page.dart';
import '../pages/detail/s_review_page.dart';
import '../pages/notification/notification_page.dart';

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
    GoRoute(
      path: RoutePath.review,
      name: 'review',
      builder: (context, state) => const ReviewPage(),
    ),
    GoRoute(
      path: RoutePath.detail,
      name: 'detail',
      builder: (context, state) => const DetailPage(),
    ),
    GoRoute(
      path: RoutePath.review_add,
      name: 'review_add',
      builder: (context, state) => const ReviewAddPage(),
    ),
    GoRoute(
      path: RoutePath.notification,
      name: 'notification',
      builder: (context, state) => const NotificationPage(),
    ),
  ],
  initialLocation: '/splash',
);

