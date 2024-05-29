import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../routes/route_path.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      color: Theme.of(context).colorScheme.primary,
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(AppIcons.mainLogo),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
                child: SvgPicture.asset(
                  AppIcons.notification,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.surface,
                    BlendMode.srcIn,
                  ),
                ),
                onTap: () {
                  context.push(RoutePath.notification);
                },),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              child: SvgPicture.asset(
                AppIcons.cart,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.surface,
                  BlendMode.srcIn,
                ),
              ),
              onTap: () {
                context.push(RoutePath.cart);
              },
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leadingWidth: 86,
      ),
    );
  }
}
