// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'new_arrivals_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewArrivalsDto _$NewArrivalsDtoFromJson(Map<String, dynamic> json) {
  return _NewArrivalsDto.fromJson(json);
}

/// @nodoc
class _$NewArrivalsDtoTearOff {
  const _$NewArrivalsDtoTearOff();

  _NewArrivalsDto call(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage}) {
    return _NewArrivalsDto(
      slNo: slNo,
      productName: productName,
      shortDetails: shortDetails,
      productImage: productImage,
    );
  }

  NewArrivalsDto fromJson(Map<String, Object> json) {
    return NewArrivalsDto.fromJson(json);
  }
}

/// @nodoc
const $NewArrivalsDto = _$NewArrivalsDtoTearOff();

/// @nodoc
mixin _$NewArrivalsDto {
  String? get slNo => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get shortDetails => throw _privateConstructorUsedError;
  String? get productImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewArrivalsDtoCopyWith<NewArrivalsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArrivalsDtoCopyWith<$Res> {
  factory $NewArrivalsDtoCopyWith(
          NewArrivalsDto value, $Res Function(NewArrivalsDto) then) =
      _$NewArrivalsDtoCopyWithImpl<$Res>;
  $Res call(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage});
}

/// @nodoc
class _$NewArrivalsDtoCopyWithImpl<$Res>
    implements $NewArrivalsDtoCopyWith<$Res> {
  _$NewArrivalsDtoCopyWithImpl(this._value, this._then);

  final NewArrivalsDto _value;
  // ignore: unused_field
  final $Res Function(NewArrivalsDto) _then;

  @override
  $Res call({
    Object? slNo = freezed,
    Object? productName = freezed,
    Object? shortDetails = freezed,
    Object? productImage = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$NewArrivalsDtoCopyWith<$Res>
    implements $NewArrivalsDtoCopyWith<$Res> {
  factory _$NewArrivalsDtoCopyWith(
          _NewArrivalsDto value, $Res Function(_NewArrivalsDto) then) =
      __$NewArrivalsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage});
}

/// @nodoc
class __$NewArrivalsDtoCopyWithImpl<$Res>
    extends _$NewArrivalsDtoCopyWithImpl<$Res>
    implements _$NewArrivalsDtoCopyWith<$Res> {
  __$NewArrivalsDtoCopyWithImpl(
      _NewArrivalsDto _value, $Res Function(_NewArrivalsDto) _then)
      : super(_value, (v) => _then(v as _NewArrivalsDto));

  @override
  _NewArrivalsDto get _value => super._value as _NewArrivalsDto;

  @override
  $Res call({
    Object? slNo = freezed,
    Object? productName = freezed,
    Object? shortDetails = freezed,
    Object? productImage = freezed,
  }) {
    return _then(_NewArrivalsDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewArrivalsDto extends _NewArrivalsDto {
  const _$_NewArrivalsDto(
      {this.slNo, this.productName, this.shortDetails, this.productImage})
      : super._();

  factory _$_NewArrivalsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NewArrivalsDtoFromJson(json);

  @override
  final String? slNo;
  @override
  final String? productName;
  @override
  final String? shortDetails;
  @override
  final String? productImage;

  @override
  String toString() {
    return 'NewArrivalsDto(slNo: $slNo, productName: $productName, shortDetails: $shortDetails, productImage: $productImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewArrivalsDto &&
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
                    .equals(other.productImage, productImage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slNo) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(shortDetails) ^
      const DeepCollectionEquality().hash(productImage);

  @JsonKey(ignore: true)
  @override
  _$NewArrivalsDtoCopyWith<_NewArrivalsDto> get copyWith =>
      __$NewArrivalsDtoCopyWithImpl<_NewArrivalsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewArrivalsDtoToJson(this);
  }
}

abstract class _NewArrivalsDto extends NewArrivalsDto {
  const factory _NewArrivalsDto(
      {String? slNo,
      String? productName,
      String? shortDetails,
      String? productImage}) = _$_NewArrivalsDto;
  const _NewArrivalsDto._() : super._();

  factory _NewArrivalsDto.fromJson(Map<String, dynamic> json) =
      _$_NewArrivalsDto.fromJson;

  @override
  String? get slNo => throw _privateConstructorUsedError;
  @override
  String? get productName => throw _privateConstructorUsedError;
  @override
  String? get shortDetails => throw _privateConstructorUsedError;
  @override
  String? get productImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewArrivalsDtoCopyWith<_NewArrivalsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
