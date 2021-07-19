import 'package:audacity_test_project/domain/trendingSellers/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_sellers.freezed.dart';

@freezed
abstract class TrendingSeller with _$TrendingSeller {
  const factory TrendingSeller({
    @required SellersSLNo? sellersSLNo,
    @required SellerName? sellerName,
    @required SellerProfilePhoto? sellerProfilePhoto,
    @required SellerItemPhoto? sellerItemPhoto,
    @required SellerCity? sellerCity,
    @required SellerState? sellerState,
    @required SellerCurrencyCode? sellerCurrencyCode,
    @required SellerOrderQty? sellerOrderQty,
    @required SellerOrderAmount? sellerOrderAmount,
    @required SellerSalesQty? sellerSalesQty,
    @required SellerSalesAmount? sellerSalesAmount,
  }) = _TrendingSellers;

  factory TrendingSeller.empty() => TrendingSeller(
        sellersSLNo: SellersSLNo(''),
        sellerName: SellerName(''),
        sellerProfilePhoto: SellerProfilePhoto(''),
        sellerItemPhoto: SellerItemPhoto(''),
        sellerCity: SellerCity(''),
        sellerState: SellerState(''),
        sellerCurrencyCode: SellerCurrencyCode(''),
        sellerOrderQty: SellerOrderQty(0),
        sellerOrderAmount: SellerOrderAmount(0),
        sellerSalesQty: SellerSalesQty(0),
        sellerSalesAmount: SellerSalesAmount(0),
      );
}
