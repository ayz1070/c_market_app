import 'view_module_factory/view_module_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/display.model.dart';
import 'widget/product_card.component.dart';
import 'widget/view_module_padding.dart';
import 'widget/view_module_title.dart';

class CategoryProductViewModule extends StatefulWidget with ViewModuleWidget {
  final ViewModule info;

  const CategoryProductViewModule({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  State<CategoryProductViewModule> createState() =>
      _CategoryProductViewModuleState();
}

class _CategoryProductViewModuleState extends State<CategoryProductViewModule>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final info = widget.info;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ViewModulePadding(
          child: ViewModuleTitle(
            title: info.title,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: Constants.horizontalPadding,
          child: AspectRatio(
            aspectRatio: 343 / 452,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 8,
                childAspectRatio: ((343 - 16) / 3) / ((452 - 12) / 2),
              ),
              itemBuilder: (_, index) {
                final productInfo = info.products[index];

                return SmallProductCard(
                  context: context,
                  productInfo: productInfo,
                );
              },
              itemCount: info.products.length,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          margin: Constants.horizontalPadding,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '전체보기',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(
                    color: colorScheme.contentPrimary,
                  )
                      .regular,
                ),
                SvgPicture.asset(
                  AppIcons.chevronRight,
                  width: 16,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    colorScheme.contentPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}