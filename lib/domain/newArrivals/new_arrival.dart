import 'package:audacity_test_project/domain/core/value_object.dart';

class NewArrivalsSlNo extends ValueObject<String> {
  final String value;
  factory NewArrivalsSlNo(String? input) {
    return NewArrivalsSlNo._(input!);
  }
  const NewArrivalsSlNo._(this.value);
}

class NewArrivalsAvailableStock extends ValueObject<int> {
  final int value;
  factory NewArrivalsAvailableStock(int? input) {
    return NewArrivalsAvailableStock._(input!);
  }
  const NewArrivalsAvailableStock._(this.value);
}
