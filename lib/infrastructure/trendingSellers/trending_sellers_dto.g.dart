// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_sellers_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingSellersDto _$_$_TrendingSellersDtoFromJson(
    Map<String, dynamic> json) {
  return _$_TrendingSellersDto(
    slNo: json['slNo'] as String?,
    sellerName: json['sellerName'] as String?,
    sellerProfilePhoto: json['sellerProfilePhoto'] as String?,
    sellerItemPhoto: json['sellerItemPhoto'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    currencyCode: json['currencyCode'] as String?,
    orderQty: json['orderQty'] as int?,
    orderAmount: json['orderAmount'] as int?,
    salesQty: json['salesQty'] as int?,
    salesAmount: json['salesAmount'] as int?,
  );
}

Map<String, dynamic> _$_$_TrendingSellersDtoToJson(
        _$_TrendingSellersDto instance) =>
    <String, dynamic>{
      'slNo': instance.slNo,
      'sellerName': instance.sellerName,
      'sellerProfilePhoto': instance.sellerProfilePhoto,
      'sellerItemPhoto': instance.sellerItemPhoto,
      'city': instance.city,
      'state': instance.state,
      'currencyCode': instance.currencyCode,
      'orderQty': instance.orderQty,
      'orderAmount': instance.orderAmount,
      'salesQty': instance.salesQty,
      'salesAmount': instance.salesAmount,
    };
