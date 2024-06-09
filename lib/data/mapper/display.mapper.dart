
import '../../domain/model/display/display.model.dart';
import '../dto/display/display.dto.dart';
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
extension ViewModuleX on ViewModuleDto {
  ViewModule toModel() {
    return ViewModule(
      type: type ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      imageUrl: imageUrl ?? '',
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