import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/constant/app_colors.dart';
import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';
import '../../../core/utils/extensions.dart';
import '../../../dependency_injection.dart';
import '../../../domain/model/display/cart/cart.model.dart';
import '../../main/bloc/payment_bloc/payment_bloc.dart';
import '../../main/component/payment/payment_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (_) => getIt<PaymentBloc>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.onPrimary,
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
          child: BlocBuilder<CartListBloc, CartListState>(
            builder: (context, state){
              List<Cart> selectedCartList = state.cartList.fold([], (previousValue, cart) {
                if(state.selectedProduct.contains(cart.product.productId)){
                  previousValue.add(cart);
                }

                return previousValue;
              },
              );
              return state.status.isSuccess
                  ? PaymentButton(
                  selectedCartList: selectedCartList,
                  totalPrice: state.totalPrice
                  )
                  : SizedBox.shrink()
            },
          ),
        ),
      ),
    );
  }
}
