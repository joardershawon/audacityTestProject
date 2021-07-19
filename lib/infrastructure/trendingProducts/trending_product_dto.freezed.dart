// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'trending_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingProductDto _$TrendingProductDtoFromJson(Map<String, dynamic> json) {
  return _TrendingProductDto.fromJson(json);
}

/// @nodoc
class _$TrendingProductDtoTearOff {
  const _$TrendingProductDtoTearOff();

  _TrendingProductDto call(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage,
      String? sellerName,
      int? availableStock}) {
    return _TrendingProductDto(
      slNo: slNo,
      productName: productName,
      shortDetails: shortDetails,
      productImage: productImage,
      sellerName: sellerName,
      availableStock: availableStock,
    );
  }

  TrendingProductDto fromJson(Map<String, Object> json) {
    return TrendingProductDto.fromJson(json);
  }
}

/// @nodoc
const $TrendingProductDto = _$TrendingProductDtoTearOff();

/// @nodoc
mixin _$TrendingProductDto {
  String? get slNo => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get shortDetails => throw _privateConstructorUsedError;
  String? get productImage => throw _privateConstructorUsedError;
  String? get sellerName => throw _privateConstructorUsedError;
  int? get availableStock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingProductDtoCopyWith<TrendingProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingProductDtoCopyWith<$Res> {
  factory $TrendingProductDtoCopyWith(
          TrendingProductDto value, $Res Function(TrendingProductDto) then) =
      _$TrendingProductDtoCopyWithImpl<$Res>;
  $Res call(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage,
      String? sellerName,
      int? availableStock});
}

/// @nodoc
class _$TrendingProductDtoCopyWithImpl<$Res>
    implements $TrendingProductDtoCopyWith<$Res> {
  _$TrendingProductDtoCopyWithImpl(this._value, this._then);

  final TrendingProductDto _value;
  // ignore: unused_field
  final $Res Function(TrendingProductDto) _then;

  @override
  $Res call({
    Object? slNo = freezed,
    Object? productName = freezed,
    Object? shortDetails = freezed,
    Object? productImage = freezed,
    Object? sellerName = freezed,
    Object? availableStock = freezed,
  }) {
    return _then(_value.copyWith(
      slNo: slNo == freezed
          ? _value.slNo
          : slNo // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDetails: shortDetails == freezed
          ? _value.shortDetails
          : shortDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: productImage == freezed
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String?,
      availableStock: availableStock == freezed
          ? _value.availableStock
          : availableStock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TrendingProductDtoCopyWith<$Res>
    implements $TrendingProductDtoCopyWith<$Res> {
  factory _$TrendingProductDtoCopyWith(
          _TrendingProductDto value, $Res Function(_TrendingProductDto) then) =
      __$TrendingProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage,
      String? sellerName,
      int? availableStock});
}

/// @nodoc
class __$TrendingProductDtoCopyWithImpl<$Res>
    extends _$TrendingProductDtoCopyWithImpl<$Res>
    implements _$TrendingProductDtoCopyWith<$Res> {
  __$TrendingProductDtoCopyWithImpl(
      _TrendingProductDto _value, $Res Function(_TrendingProductDto) _then)
      : super(_value, (v) => _then(v as _TrendingProductDto));

  @override
  _TrendingProductDto get _value => super._value as _TrendingProductDto;

  @override
  $Res call({
    Object? slNo = freezed,
    Object? productName = freezed,
    Object? shortDetails = freezed,
    Object? productImage = freezed,
    Object? sellerName = freezed,
    Object? availableStock = freezed,
  }) {
    return _then(_TrendingProductDto(
      slNo: slNo == freezed
          ? _value.slNo
          : slNo // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDetails: shortDetails == freezed
          ? _value.shortDetails
          : shortDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: productImage == freezed
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String?,
      availableStock: availableStock == freezed
          ? _value.availableStock
          : availableStock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingProductDto extends _TrendingProductDto {
  const _$_TrendingProductDto(
      {this.slNo,
      this.productName,
      this.shortDetails,
      this.productImage,
      this.sellerName,
      this.availableStock})
      : super._();

  factory _$_TrendingProductDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TrendingProductDtoFromJson(json);

  @override
  final String? slNo;
  @override
  final String? productName;
  @override
  final String? shortDetails;
  @override
  final String? productImage;
  @override
  final String? sellerName;
  @override
  final int? availableStock;

  @override
  String toString() {
    return 'TrendingProductDto(slNo: $slNo, productName: $productName, shortDetails: $shortDetails, productImage: $productImage, sellerName: $sellerName, availableStock: $availableStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrendingProductDto &&
            (identical(other.slNo, slNo) ||
                const DeepCollectionEquality().equals(other.slNo, slNo)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.shortDetails, shortDetails) ||
                const DeepCollectionEquality()
                    .equals(other.shortDetails, shortDetails)) &&
            (identical(other.productImage, productImage) ||
                const DeepCollectionEquality()
                    .equals(other.productImage, productImage)) &&
            (identical(other.sellerName, sellerName) ||
                const DeepCollectionEquality()
                    .equals(other.sellerName, sellerName)) &&
            (identical(other.availableStock, availableStock) ||
                const DeepCollectionEquality()
                    .equals(other.availableStock, availableStock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slNo) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(shortDetails) ^
      const DeepCollectionEquality().hash(productImage) ^
      const DeepCollectionEquality().hash(sellerName) ^
      const DeepCollectionEquality().hash(availableStock);

  @JsonKey(ignore: true)
  @override
  _$TrendingProductDtoCopyWith<_TrendingProductDto> get copyWith =>
      __$TrendingProductDtoCopyWithImpl<_TrendingProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrendingProductDtoToJson(this);
  }
}

abstract class _TrendingProductDto extends TrendingProductDto {
  const factory _TrendingProductDto(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage,
      String? sellerName,
      int? availableStock}) = _$_TrendingProductDto;
  const _TrendingProductDto._() : super._();

  factory _TrendingProductDto.fromJson(Map<String, dynamic> json) =
      _$_TrendingProductDto.fromJson;

  @override
  String? get slNo => throw _privateConstructorUsedError;
  @override
  String? get productName => throw _privateConstructorUsedError;
  @override
  String? get shortDetails => throw _privateConstructorUsedError;
  @override
  String? get productImage => throw _privateConstructorUsedError;
  @override
  String? get sellerName => throw _privateConstructorUsedError;
  @override
  int? get availableStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrendingProductDtoCopyWith<_TrendingProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
