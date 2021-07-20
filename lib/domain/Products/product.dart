import 'package:audacity_test_project/domain/Products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required ProductSlNo? productSlNo,
    @required ProductFriendlyTimeDiff? productFriendlyTimeDiff,
    @required ProductShopLogo? productShopLogo,
    @required ProductShopName? productShopName,
    @required ProductCurrencyCode? productCurrencyCode,
    @required ProductStory? productStory,
    @required ProductStoryImage? productStoryImage,
    @required ProductOrderQty? productOrderQty,
    @required ProductAvailableStock? productAvailableStock,
    @required ProductUnitPrice? productUnitPrice,
  }) = _Product;

  factory Product.empty() => Product(
        productSlNo: ProductSlNo(''),
        productFriendlyTimeDiff: ProductFriendlyTimeDiff(''),
        productShopLogo: ProductShopLogo(''),
        productShopName: ProductShopName(''),
        productCurrencyCode: ProductCurrencyCode(''),
        productStory: ProductStory(''),
        productStoryImage: ProductStoryImage(''),
        productOrderQty: ProductOrderQty(0),
        productAvailableStock: ProductAvailableStock(0),
        productUnitPrice: ProductUnitPrice(0),
      );
}
