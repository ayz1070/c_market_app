import '../../../model/display/cart/cart.model.dart';
import '../../../repository/display.repository.dart';
import '../../base/local.usecase.dart';

class AddCartListUsecase extends LocalUsecase<DisplayRepository> {

  final Cart cart;

  AddCartListUsecase({required this.cart});

  @override
  Future call(DisplayRepository repository) async {
    // final result = await repository.addCartList(cart: cart);

    // return (result.status.isSuccess)
    //     ? Result.success(result.data)
    //     : Result.failure(
    //   ErrorResponse(
    //     status: result.status,
    //     code: result.code,
    //     message: result.message,
    //   ),
    // );
  }
}