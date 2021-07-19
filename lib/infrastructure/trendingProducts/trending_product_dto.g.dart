// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingProductDto _$_$_TrendingProductDtoFromJson(
    Map<String, dynamic> json) {
  return _$_TrendingProductDto(
    slNo: json['slNo'] as String?,
    productName: json['productName'] as String?,
    shortDetails: json['shortDetails'] as String?,
    productImage: json['productImage'] as String?,
    sellerName: json['sellerName'] as String?,
    availableStock: json['availableStock'] as int?,
  );
}

Map<String, dynamic> _$_$_TrendingProductDtoToJson(
        _$_TrendingProductDto instance) =>
    <String, dynamic>{
      'slNo': instance.slNo,
      'productName': instance.productName,
      'shortDetails': instance.shortDetails,
      'productImage': instance.productImage,
      'sellerName': instance.sellerName,
      'availableStock': instance.availableStock,
    };
