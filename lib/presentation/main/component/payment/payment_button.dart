import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extensions.dart';

class PaymentButton extends StatelessWidget {
  //Todo List타입을 Cart로 바꿔야함
  final List<String> selectedCartList;
  final int totalPrice;


  const PaymentButton({
    super.key,
    required this.selectedCartList,
    required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.horizontalPadding,
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
            backgroundColor: selectedCartList.isNotEmpty
                ? Theme.of(context).colorScheme.primary
                : Colors.grey[400] ?? Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                )
              )
            )
          ),
          child: Center(
            child: Text(
              selectedCartList.isNotEmpty
                  ? '${totalPrice.toWon()} 결제하기'
                  : '상품을 선택해주세요',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      )
    );
  }
}
