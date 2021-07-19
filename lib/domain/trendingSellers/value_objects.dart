import 'package:audacity_test_project/domain/core/value_object.dart';

class SellersSLNo extends ValueObject<String> {
  final String value;
  factory SellersSLNo(String? input) {
    return SellersSLNo._(input!);
  }
  const SellersSLNo._(this.value);
}

class SellerName extends ValueObject<String> {
  final String value;
  factory SellerName(String? input) {
    return SellerName._(input!);
  }
  const SellerName._(this.value);
}

class SellerProfilePhoto extends ValueObject<String> {
  final String value;
  factory SellerProfilePhoto(String? input) {
    return SellerProfilePhoto._(input!);
  }
  const SellerProfilePhoto._(this.value);
}

class SellerItemPhoto extends ValueObject<String> {
  final String value;
  factory SellerItemPhoto(String? input) {
    return SellerItemPhoto._(input!);
  }
  const SellerItemPhoto._(this.value);
}

class SellerCity extends ValueObject<String> {
  final String value;
  factory SellerCity(String input) {
    return SellerCity._(input);
  }
  const SellerCity._(this.value);
}

class SellerState extends ValueObject<String> {
  final String value;
  factory SellerState(String? input) {
    return SellerState._(input!);
  }
  const SellerState._(this.value);
}

class SellerCurrencyCode extends ValueObject<String> {
  final String value;
  factory SellerCurrencyCode(String? input) {
    return SellerCurrencyCode._(input!);
  }
  const SellerCurrencyCode._(this.value);
}

class SellerOrderQty extends ValueObject<int> {
  final int value;
  factory SellerOrderQty(int? input) {
    return SellerOrderQty._(input!);
  }
  const SellerOrderQty._(this.value);
}

class SellerOrderAmount extends ValueObject<int> {
  final int value;
  factory SellerOrderAmount(int? input) {
    return SellerOrderAmount._(input!);
  }
  const SellerOrderAmount._(this.value);
}

class SellerSalesQty extends ValueObject<int> {
  final int value;
  factory SellerSalesQty(int? input) {
    return SellerSalesQty._(input!);
  }
  const SellerSalesQty._(this.value);
}

class SellerSalesAmount extends ValueObject<int> {
  final int value;
  factory SellerSalesAmount(int? input) {
    return SellerSalesAmount._(input!);
  }
  const SellerSalesAmount._(this.value);
}
