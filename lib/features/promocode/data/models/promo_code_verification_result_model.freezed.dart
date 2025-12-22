// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_code_verification_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoCodeVerificationResultModel {

@JsonKey(name: 'isValid') bool get isValid; String get discount; PromoCodeModel get promo;
/// Create a copy of PromoCodeVerificationResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoCodeVerificationResultModelCopyWith<PromoCodeVerificationResultModel> get copyWith => _$PromoCodeVerificationResultModelCopyWithImpl<PromoCodeVerificationResultModel>(this as PromoCodeVerificationResultModel, _$identity);

  /// Serializes this PromoCodeVerificationResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoCodeVerificationResultModel&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.promo, promo) || other.promo == promo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isValid,discount,promo);

@override
String toString() {
  return 'PromoCodeVerificationResultModel(isValid: $isValid, discount: $discount, promo: $promo)';
}


}

/// @nodoc
abstract mixin class $PromoCodeVerificationResultModelCopyWith<$Res>  {
  factory $PromoCodeVerificationResultModelCopyWith(PromoCodeVerificationResultModel value, $Res Function(PromoCodeVerificationResultModel) _then) = _$PromoCodeVerificationResultModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isValid') bool isValid, String discount, PromoCodeModel promo
});


$PromoCodeModelCopyWith<$Res> get promo;

}
/// @nodoc
class _$PromoCodeVerificationResultModelCopyWithImpl<$Res>
    implements $PromoCodeVerificationResultModelCopyWith<$Res> {
  _$PromoCodeVerificationResultModelCopyWithImpl(this._self, this._then);

  final PromoCodeVerificationResultModel _self;
  final $Res Function(PromoCodeVerificationResultModel) _then;

/// Create a copy of PromoCodeVerificationResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isValid = null,Object? discount = null,Object? promo = null,}) {
  return _then(_self.copyWith(
isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,promo: null == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoCodeModel,
  ));
}
/// Create a copy of PromoCodeVerificationResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoCodeModelCopyWith<$Res> get promo {
  
  return $PromoCodeModelCopyWith<$Res>(_self.promo, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromoCodeVerificationResultModel].
extension PromoCodeVerificationResultModelPatterns on PromoCodeVerificationResultModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoCodeVerificationResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoCodeVerificationResultModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoCodeVerificationResultModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoCodeVerificationResultModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoCodeVerificationResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoCodeVerificationResultModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isValid')  bool isValid,  String discount,  PromoCodeModel promo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoCodeVerificationResultModel() when $default != null:
return $default(_that.isValid,_that.discount,_that.promo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isValid')  bool isValid,  String discount,  PromoCodeModel promo)  $default,) {final _that = this;
switch (_that) {
case _PromoCodeVerificationResultModel():
return $default(_that.isValid,_that.discount,_that.promo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isValid')  bool isValid,  String discount,  PromoCodeModel promo)?  $default,) {final _that = this;
switch (_that) {
case _PromoCodeVerificationResultModel() when $default != null:
return $default(_that.isValid,_that.discount,_that.promo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoCodeVerificationResultModel implements PromoCodeVerificationResultModel {
  const _PromoCodeVerificationResultModel({@JsonKey(name: 'isValid') required this.isValid, required this.discount, required this.promo});
  factory _PromoCodeVerificationResultModel.fromJson(Map<String, dynamic> json) => _$PromoCodeVerificationResultModelFromJson(json);

@override@JsonKey(name: 'isValid') final  bool isValid;
@override final  String discount;
@override final  PromoCodeModel promo;

/// Create a copy of PromoCodeVerificationResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoCodeVerificationResultModelCopyWith<_PromoCodeVerificationResultModel> get copyWith => __$PromoCodeVerificationResultModelCopyWithImpl<_PromoCodeVerificationResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoCodeVerificationResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoCodeVerificationResultModel&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.promo, promo) || other.promo == promo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isValid,discount,promo);

@override
String toString() {
  return 'PromoCodeVerificationResultModel(isValid: $isValid, discount: $discount, promo: $promo)';
}


}

/// @nodoc
abstract mixin class _$PromoCodeVerificationResultModelCopyWith<$Res> implements $PromoCodeVerificationResultModelCopyWith<$Res> {
  factory _$PromoCodeVerificationResultModelCopyWith(_PromoCodeVerificationResultModel value, $Res Function(_PromoCodeVerificationResultModel) _then) = __$PromoCodeVerificationResultModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isValid') bool isValid, String discount, PromoCodeModel promo
});


@override $PromoCodeModelCopyWith<$Res> get promo;

}
/// @nodoc
class __$PromoCodeVerificationResultModelCopyWithImpl<$Res>
    implements _$PromoCodeVerificationResultModelCopyWith<$Res> {
  __$PromoCodeVerificationResultModelCopyWithImpl(this._self, this._then);

  final _PromoCodeVerificationResultModel _self;
  final $Res Function(_PromoCodeVerificationResultModel) _then;

/// Create a copy of PromoCodeVerificationResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isValid = null,Object? discount = null,Object? promo = null,}) {
  return _then(_PromoCodeVerificationResultModel(
isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,promo: null == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoCodeModel,
  ));
}

/// Create a copy of PromoCodeVerificationResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoCodeModelCopyWith<$Res> get promo {
  
  return $PromoCodeModelCopyWith<$Res>(_self.promo, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}

// dart format on
