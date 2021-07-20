import 'package:audacity_test_project/domain/core/value_object.dart';

class TrendingProductSlNo extends ValueObject<String> {
  final String value;
  factory TrendingProductSlNo(String? input) {
    return TrendingProductSlNo._(input!);
  }
  const TrendingProductSlNo._(this.value);
}

class TrendingProductName extends ValueObject<String> {
  final String value;
  factory TrendingProductName(String? input) {
    return TrendingProductName._(input!);
  }
  const TrendingProductName._(this.value);
}

class TrendingProductShortDetails extends ValueObject<String> {
  final String value;
  factory TrendingProductShortDetails(String? input) {
    return TrendingProductShortDetails._(input!);
  }
  const TrendingProductShortDetails._(this.value);
}

class TrendingProductImage extends ValueObject<String> {
  final String value;
  factory TrendingProductImage(String? input) {
    return TrendingProductImage._(input!);
  }
  const TrendingProductImage._(this.value);
}

class TrendingProductSellerName extends ValueObject<String> {
  final String value;
  factory TrendingProductSellerName(String? input) {
    return TrendingProductSellerName._(input!);
  }
  const TrendingProductSellerName._(this.value);
}

class TrendingProductAvailableStock extends ValueObject<int> {
  final int value;
  factory TrendingProductAvailableStock(int? input) {
    return TrendingProductAvailableStock._(input!);
  }
  const TrendingProductAvailableStock._(this.value);
}
