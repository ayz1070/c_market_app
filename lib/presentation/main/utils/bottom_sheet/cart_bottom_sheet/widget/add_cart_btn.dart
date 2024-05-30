import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../bloc/cart_bloc/cart_bloc.dart';

const double _btnHeight = 48;

class AddCartBtn extends StatelessWidget {
  const AddCartBtn({super.key, required this.totalPrice});

  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final blocState = context.watch<CartBloc>().state;

    return GestureDetector(
      //Todo 장바구니 담기 버튼
      onTap: null,
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        height: _btnHeight,
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: '${blocState.totalPrice.toWon()}',
              style: textTheme.titleSmall?.semiBold
                  ?.copyWith(color: colorScheme.onPrimary),
            ),
            TextSpan(
              text: ' 장바구니 담기',
              style:
              textTheme.titleSmall?.copyWith(color: colorScheme.onPrimary),
            ),
          ]),
        ),
      ),
    );
  }
}
