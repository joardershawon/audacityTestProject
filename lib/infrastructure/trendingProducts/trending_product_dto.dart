import 'package:audacity_test_project/domain/trendingProducts/trending_product.dart';
import 'package:audacity_test_project/domain/trendingProducts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_product_dto.freezed.dart';
part 'trending_product_dto.g.dart';

@freezed
abstract class TrendingProductDto implements _$TrendingProductDto {
  const TrendingProductDto._();
  const factory TrendingProductDto({
    @required String? slNo,
    @required String? productName,
    @required String? shortDetails,
    @required String? productImage,
    @required String? sellerName,
    @required int? availableStock,
  }) = _TrendingProductDto;

  TrendingProduct toDomain() {
    return TrendingProduct(
      trendingproductSlNo: TrendingProductSlNo(slNo ?? 'n'),
      trendingproductName: TrendingProductName(productName),
      trendingproductShortDetails: TrendingProductShortDetails(shortDetails),
      trendingproductImage: TrendingProductImage(productImage),
      trendingproductSellerName: TrendingProductSellerName(sellerName),
      trendingproductAvailableStock:
          TrendingProductAvailableStock(availableStock),
    );
  }

  factory TrendingProductDto.fromJson(Map<String, dynamic>? json) =>
      _$TrendingProductDtoFromJson(json!);
}
