import '../../domain/model/display/display.model.dart';
import '../main/main_screen.dart';
import '../pages/cart/cart_page.dart';
import '../pages/detail/s_detail_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/user/login_screen.dart';
import '../pages/user/user_page.dart';
import 'route_path.dart';
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
      builder: (context, state) => const ReviewPage(
        productInfo: ProductInfo(
            productId: "",
            title: "",
            subtitle: "",
            imageUrl: "",
            price: 0,
            originalPrice: 0,
            discountRate: 0,
            reviewCount: 0),
        reviewList: [],
      ),
    ),
    GoRoute(
      path: RoutePath.detail,
      name: 'detail',
      builder: (context, state) => const DetailPage(
          productInfo: ProductInfo(
              productId: "",
              title: "",
              subtitle: "",
              imageUrl: "",
              price: 0,
              originalPrice: 0,
              discountRate: 0,
              reviewCount: 0),
          reviewList: [],
      ),
    ),
    GoRoute(
      path: RoutePath.review_add,
      name: 'review_add',
      builder: (context, state) => const ReviewAddPage(
        productInfo: ProductInfo(
            productId: "",
            title: "",
            subtitle: "",
            imageUrl: "",
            price: 0,
            originalPrice: 0,
            discountRate: 0,
            reviewCount: 0),
        reviewList: [],
      ),
    ),
    GoRoute(
      path: RoutePath.notification,
      name: 'notification',
      builder: (context, state) => NotificationPage(),
    ),
    GoRoute(
      path: RoutePath.user,
      name: 'user',
      builder: (context, state) => UserPage(),
    ),
    GoRoute(
      path: RoutePath.login,
      name: 'login',
      builder: (context, state) => LoginScreen(),
    ),
  ],
  initialLocation: '/splash',
);
