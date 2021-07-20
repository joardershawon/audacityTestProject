import 'package:audacity_test_project/domain/newArrivals/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_arrival.freezed.dart';

@freezed
abstract class NewArrival with _$NewArrival {
  const factory NewArrival({
    @required NewArrivalsSlNo? newArrivalsSlNo,
    @required NewArrivalsProductName? newArrivalsproNewArrivalsProductName,
    @required NewArrivalsProductImage? newArrivalsImageNewArrivalsProductImage,
    @required NewArrivalsShortDetails? newArrivalsShortDetails,
  }) = _NewArrival;
  factory NewArrival.empty() => NewArrival(
        newArrivalsSlNo: NewArrivalsSlNo(''),
        newArrivalsproNewArrivalsProductName: NewArrivalsProductName(''),
        newArrivalsImageNewArrivalsProductImage: NewArrivalsProductImage(''),
        newArrivalsShortDetails: NewArrivalsShortDetails(''),
      );
}
