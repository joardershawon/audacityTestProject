import 'package:audacity_test_project/domain/core/value_object.dart';

class ProductSlNo extends ValueObject<String> {
  final String value;
  factory ProductSlNo(String? input) {
    return ProductSlNo._(input!);
  }
  const ProductSlNo._(this.value);
}

class ProductName extends ValueObject<String> {
  final String value;
  factory ProductName(String? input) {
    return ProductName._(input!);
  }
  const ProductName._(this.value);
}

class ProductShortDetails extends ValueObject<String> {
  final String value;
  factory ProductShortDetails(String? input) {
    return ProductShortDetails._(input!);
  }
  const ProductShortDetails._(this.value);
}

class ProductImage extends ValueObject<String> {
  final String value;
  factory ProductImage(String? input) {
    return ProductImage._(input!);
  }
  const ProductImage._(this.value);
}

class ProductSellerName extends ValueObject<String> {
  final String value;
  factory ProductSellerName(String? input) {
    return ProductSellerName._(input!);
  }
  const ProductSellerName._(this.value);
}

class ProductAvailableStock extends ValueObject<int> {
  final int value;
  factory ProductAvailableStock(int? input) {
    return ProductAvailableStock._(input!);
  }
  const ProductAvailableStock._(this.value);
}
