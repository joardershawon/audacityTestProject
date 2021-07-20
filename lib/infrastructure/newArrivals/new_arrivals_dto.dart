import 'package:audacity_test_project/domain/newArrivals/new_arrival.dart';
import 'package:audacity_test_project/domain/newArrivals/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_arrivals_dto.freezed.dart';
part 'new_arrivals_dto.g.dart';

@freezed
abstract class NewArrivalsDto implements _$NewArrivalsDto {
  const NewArrivalsDto._();
  const factory NewArrivalsDto({
    @required String? slNo,
    @required String? productName,
    @required String? shortDetails,
    @required String? productImage,
  }) = _NewArrivalsDto;
  NewArrival toDomain() {
    return NewArrival(
      newArrivalsSlNo: NewArrivalsSlNo(slNo ?? ''),
      newArrivalsproNewArrivalsProductName:
          NewArrivalsProductName(productName ?? ''),
      newArrivalsImageNewArrivalsProductImage:
          NewArrivalsProductImage(productImage ?? ''),
      newArrivalsShortDetails: NewArrivalsShortDetails(shortDetails ?? ''),
    );
  }

  factory NewArrivalsDto.fromJson(Map<String, dynamic>? json) =>
      _$NewArrivalsDtoFromJson(json!);
}
