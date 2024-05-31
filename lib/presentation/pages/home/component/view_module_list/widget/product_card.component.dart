import 'product_card_widget.dart';

class LargeProductCard extends ProductCardWidget {
  LargeProductCard({
    required super.productInfo,
  }) : super(
          imageAspect: 150 / 195,
        );
}

class SmallProductCard extends ProductCardWidget {
  SmallProductCard({
    required super.productInfo,
  }) : super(
    imageAspect: 114 / 152,
  );
}
