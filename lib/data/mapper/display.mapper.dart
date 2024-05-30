import 'package:c_market_app/domain/model/display/menu/menu.model.dart';

import '../../domain/model/display/cart/cart.model.dart';
import '../../domain/model/display/product_info/product_info.model.dart';
import '../dto/display/menu/menu.dto.dart';
import '../entity/display/cart/cart.entity.dart';
import '../entity/display/product_info/product_info.entity.dart';

extension MenuX on MenuDto{
  Menu toModel(){
    return Menu(
        tabId: tabId ?? -1,
        title: title ?? ''
    );
  }
}

/// MODEL -> ENTITY
extension ProductInfoEx on ProductInfo {
  ProductInfoEntity toEntity() {
    return ProductInfoEntity(
      productId: productId,
      title: title,
      subtitle: subtitle,
      imageUrl: imageUrl,
      price: price,
      originalPrice: originalPrice,
      discountRate: discrountRate,
      reviewCount: reviewCount,
    );
  }
}

/// Entity -> MODEL
extension ProductInfoEntityEx on ProductInfoEntity {
  ProductInfo toModel() {
    return ProductInfo(
      productId: productId,
      title: title,
      subtitle: subtitle,
      imageUrl: imageUrl,
      price: price,
      originalPrice: originalPrice,
      discrountRate: discountRate,
      reviewCount: reviewCount,
    );
  }
}

/// Entity -> MODEL
extension CartEntityEx on CartEntity {
  Cart toModel() {
    return Cart(product: product.toModel(), quantity: quantity);
  }
}

extension CartEx on Cart {
  CartEntity toEntity() {
    return CartEntity(product: product.toEntity(), quantity: quantity);
  }
}