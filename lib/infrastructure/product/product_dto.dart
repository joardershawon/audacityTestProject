import 'package:audacity_test_project/domain/Products/product.dart';
import 'package:audacity_test_project/domain/Products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();
  const factory ProductDto({
    @required String? slNo,
    @required String? friendlyTimeDiff,
    @required String? shopLogo,
    @required String? shopName,
    @required String? currencyCode,
    @required String? story,
    @required String? storyImage,
    @required int? orderQty,
    @required int? availableStock,
    @required int? unitPrice,
  }) = _ProductDto;

  Product toDomain() {
    return Product(
      productSlNo: ProductSlNo(slNo),
      productFriendlyTimeDiff: ProductFriendlyTimeDiff(friendlyTimeDiff),
      productShopLogo: ProductShopLogo(shopLogo),
      productShopName: ProductShopName(shopName),
      productCurrencyCode: ProductCurrencyCode(currencyCode),
      productStory: ProductStory(story),
      productStoryImage: ProductStoryImage(storyImage),
      productOrderQty: ProductOrderQty(orderQty),
      productAvailableStock: ProductAvailableStock(availableStock),
      productUnitPrice: ProductUnitPrice(unitPrice),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic>? json) =>
      _$ProductDtoFromJson(json!);
}
