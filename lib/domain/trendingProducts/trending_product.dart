import 'package:audacity_test_project/domain/trendingProducts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_product.freezed.dart';

@freezed
abstract class TrendingProduct with _$TrendingProduct {
  const factory TrendingProduct({
    @required TrendingProductSlNo? trendingproductSlNo,
    @required TrendingProductName? trendingproductName,
    @required TrendingProductShortDetails? trendingproductShortDetails,
    @required TrendingProductImage? trendingproductImage,
    @required TrendingProductSellerName? trendingproductSellerName,
    @required TrendingProductAvailableStock? trendingproductAvailableStock,
  }) = _TrendingProduct;

  factory TrendingProduct.empty() => TrendingProduct(
        trendingproductSlNo: TrendingProductSlNo(''),
        trendingproductName: TrendingProductName(''),
        trendingproductShortDetails: TrendingProductShortDetails(''),
        trendingproductImage: TrendingProductImage(''),
        trendingproductSellerName: TrendingProductSellerName(''),
        trendingproductAvailableStock: TrendingProductAvailableStock(0),
      );
}
