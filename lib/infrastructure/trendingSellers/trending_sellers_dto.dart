import 'package:audacity_test_project/domain/trendingSellers/trending_sellers.dart';
import 'package:audacity_test_project/domain/trendingSellers/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_sellers_dto.freezed.dart';
part 'trending_sellers_dto.g.dart';

@freezed
abstract class TrendingSellerDto implements _$TrendingSellerDto {
  const TrendingSellerDto._();
  const factory TrendingSellerDto({
    @required String? slNo,
    @required String? sellerName,
    @required String? sellerProfilePhoto,
    @required String? sellerItemPhoto,
    @required String? city,
    @required String? state,
    @required String? currencyCode,
    @required int? orderQty,
    @required int? orderAmount,
    @required int? salesQty,
    @required int? salesAmount,
  }) = _TrendingSellersDto;

  TrendingSeller toDomain() {
    return TrendingSeller(
      sellersSLNo: SellersSLNo(slNo),
      sellerName: SellerName(sellerName),
      sellerProfilePhoto: SellerProfilePhoto(sellerProfilePhoto),
      sellerItemPhoto: SellerItemPhoto(sellerItemPhoto!),
      sellerCity: SellerCity(city == null ? 'n' : city!),
      sellerState: SellerState(state == null ? 'none' : state!),
      sellerCurrencyCode: SellerCurrencyCode(currencyCode!),
      sellerOrderQty: SellerOrderQty(orderQty!),
      sellerOrderAmount: SellerOrderAmount(orderAmount!),
      sellerSalesQty: SellerSalesQty(salesQty!),
      sellerSalesAmount: SellerSalesAmount(salesAmount!),
    );
  }

  factory TrendingSellerDto.fromJson(Map<String, dynamic>? json) =>
      _$TrendingSellerDtoFromJson(json!);
}
