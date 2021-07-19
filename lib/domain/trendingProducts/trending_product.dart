import 'package:audacity_test_project/domain/trendingProducts/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_product.freezed.dart';

@freezed
abstract class TrendingProduct with _$TrendingProduct {
  const factory TrendingProduct({
    @required ProductSlNo? productSlNo,
    @required ProductName? productName,
    @required ProductShortDetails? productShortDetails,
    @required ProductImage? productImage,
    @required ProductSellerName? productSellerName,
    @required ProductAvailableStock? productAvailableStock,
  }) = _TrendingProduct;

  factory TrendingProduct.empty() => TrendingProduct(
        productSlNo: ProductSlNo(''),
        productName: ProductName(''),
        productShortDetails: ProductShortDetails(''),
        productImage: ProductImage(''),
        productSellerName: ProductSellerName(''),
        productAvailableStock: ProductAvailableStock(0),
      );
}
