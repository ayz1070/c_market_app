import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/snack_bar/common_snack_bar.dart';
import '../../../../pages/cart/bloc/cart_list_bloc/cart_list_bloc.dart';
import '../../../bloc/cart_bloc/cart_bloc.dart';
import 'widget/add_cart_btn.dart';
import 'widget/cart_price_info.dart';
import 'widget/cart_product_info.dart';

Future<bool?> cartBottomSheet(BuildContext context) {
  return showModalBottomSheet(context: context, builder: (_) {
    return SafeArea(
        child: BlocListener<CartListBloc, CartListState>(
          listener: (_, state){
            if(state.status.isError){
              CommonSnackBar.errorSnackBar(context, error: state.error);
            }
            if (context.canPop()){
              context.pop(!state.status.isError);
            }
          },
          listenWhen: (pre, cur) =>
          pre.status != cur.status && !cur.status.isLoading,
          child: const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CartProductInfo(),
                  const Divider(height: 1, thickness: 1,),
                  CartPriceInfo(),
                  AddCartBtn(),
                ],
              ),
            )
        ),
    );
  },
  showDragHandle: true,
  );
}