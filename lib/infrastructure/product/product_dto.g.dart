// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$_$_ProductDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDto(
    slNo: json['slNo'] as String?,
    friendlyTimeDiff: json['friendlyTimeDiff'] as String?,
    shopLogo: json['shopLogo'] as String?,
    shopName: json['shopName'] as String?,
    currencyCode: json['currencyCode'] as String?,
    story: json['story'] as String?,
    storyImage: json['storyImage'] as String?,
    orderQty: json['orderQty'] as int?,
    availableStock: json['availableStock'] as int?,
    unitPrice: json['unitPrice'] as int?,
  );
}

Map<String, dynamic> _$_$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'slNo': instance.slNo,
      'friendlyTimeDiff': instance.friendlyTimeDiff,
      'shopLogo': instance.shopLogo,
      'shopName': instance.shopName,
      'currencyCode': instance.currencyCode,
      'story': instance.story,
      'storyImage': instance.storyImage,
      'orderQty': instance.orderQty,
      'availableStock': instance.availableStock,
      'unitPrice': instance.unitPrice,
    };
