import 'package:audacity_test_project/domain/core/value_object.dart';

class NewArrivalsSlNo extends ValueObject<String> {
  final String value;
  factory NewArrivalsSlNo(String? input) {
    return NewArrivalsSlNo._(input!);
  }
  const NewArrivalsSlNo._(this.value);
}

class NewArrivalsProductName extends ValueObject<String> {
  final String value;
  factory NewArrivalsProductName(String? input) {
    return NewArrivalsProductName._(input!);
  }
  const NewArrivalsProductName._(this.value);
}

class NewArrivalsProductImage extends ValueObject<String> {
  final String value;
  factory NewArrivalsProductImage(String? input) {
    return NewArrivalsProductImage._(input!);
  }
  const NewArrivalsProductImage._(this.value);
}

class NewArrivalsShortDetails extends ValueObject<String> {
  final String value;
  factory NewArrivalsShortDetails(String? input) {
    return NewArrivalsShortDetails._(input!);
  }
  const NewArrivalsShortDetails._(this.value);
}

class NewArrivalsAvailableStock extends ValueObject<int> {
  final int value;
  factory NewArrivalsAvailableStock(int? input) {
    return NewArrivalsAvailableStock._(input!);
  }
  const NewArrivalsAvailableStock._(this.value);
}
