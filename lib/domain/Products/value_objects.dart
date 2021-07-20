import 'package:audacity_test_project/domain/core/value_object.dart';

class ProductShopName extends ValueObject<String> {
  final String value;
  factory ProductShopName(String? input) {
    return ProductShopName._(input!);
  }
  const ProductShopName._(this.value);
}

class ProductSlNo extends ValueObject<String> {
  final String value;
  factory ProductSlNo(String? input) {
    return ProductSlNo._(input!);
  }
  const ProductSlNo._(this.value);
}

class ProductFriendlyTimeDiff extends ValueObject<String> {
  final String value;
  factory ProductFriendlyTimeDiff(String? input) {
    return ProductFriendlyTimeDiff._(input!);
  }
  const ProductFriendlyTimeDiff._(this.value);
}

class ProductShopLogo extends ValueObject<String> {
  final String value;
  factory ProductShopLogo(String? input) {
    return ProductShopLogo._(input!);
  }
  const ProductShopLogo._(this.value);
}

class ProductCurrencyCode extends ValueObject<String> {
  final String value;
  factory ProductCurrencyCode(String? input) {
    return ProductCurrencyCode._(input!);
  }
  const ProductCurrencyCode._(this.value);
}

class ProductStory extends ValueObject<String> {
  final String value;
  factory ProductStory(String? input) {
    return ProductStory._(input!);
  }
  const ProductStory._(this.value);
}

class ProductStoryImage extends ValueObject<String> {
  final String value;
  factory ProductStoryImage(String? input) {
    return ProductStoryImage._(input!);
  }
  const ProductStoryImage._(this.value);
}

class ProductAvailableStock extends ValueObject<int> {
  final int value;
  factory ProductAvailableStock(int? input) {
    return ProductAvailableStock._(input!);
  }
  const ProductAvailableStock._(this.value);
}

class ProductOrderQty extends ValueObject<int> {
  final int value;
  factory ProductOrderQty(int? input) {
    return ProductOrderQty._(input!);
  }
  const ProductOrderQty._(this.value);
}

class ProductUnitPrice extends ValueObject<int> {
  final int value;
  factory ProductUnitPrice(int? input) {
    return ProductUnitPrice._(input!);
  }
  const ProductUnitPrice._(this.value);
}
