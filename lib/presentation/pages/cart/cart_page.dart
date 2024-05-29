import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';
import '../../main/component/payment/payment_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> selectedCartList = ['틴트', '아이라이너'];
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              }
            },
          ),
        ),
        title: Text(
          '장바구니',
          style: textTheme.titleMedium.semiBold
              ?.copyWith(color: colorScheme.contentPrimary),
        ),
      ),
      body: Center(
        child: Text('cart'),
      ),
      bottomNavigationBar: SafeArea(
        child: PaymentButton(
          //Todo 리스트 수정
          selectedCartList: selectedCartList,
          totalPrice: 5000,
        ),
      ),
    );
  }
}
