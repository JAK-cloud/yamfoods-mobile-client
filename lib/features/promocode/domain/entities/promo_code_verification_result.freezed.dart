// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_code_verification_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PromoCodeVerificationResult {

 bool get isValid; String get discount; PromoCode get promo;
/// Create a copy of PromoCodeVerificationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoCodeVerificationResultCopyWith<PromoCodeVerificationResult> get copyWith => _$PromoCodeVerificationResultCopyWithImpl<PromoCodeVerificationResult>(this as PromoCodeVerificationResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoCodeVerificationResult&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.promo, promo) || other.promo == promo));
}


@override
int get hashCode => Object.hash(runtimeType,isValid,discount,promo);

@override
String toString() {
  return 'PromoCodeVerificationResult(isValid: $isValid, discount: $discount, promo: $promo)';
}


}

/// @nodoc
abstract mixin class $PromoCodeVerificationResultCopyWith<$Res>  {
  factory $PromoCodeVerificationResultCopyWith(PromoCodeVerificationResult value, $Res Function(PromoCodeVerificationResult) _then) = _$PromoCodeVerificationResultCopyWithImpl;
@useResult
$Res call({
 bool isValid, String discount, PromoCode promo
});


$PromoCodeCopyWith<$Res> get promo;

}
/// @nodoc
class _$PromoCodeVerificationResultCopyWithImpl<$Res>
    implements $PromoCodeVerificationResultCopyWith<$Res> {
  _$PromoCodeVerificationResultCopyWithImpl(this._self, this._then);

  final PromoCodeVerificationResult _self;
  final $Res Function(PromoCodeVerificationResult) _then;

/// Create a copy of PromoCodeVerificationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isValid = null,Object? discount = null,Object? promo = null,}) {
  return _then(_self.copyWith(
isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,promo: null == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoCode,
  ));
}
/// Create a copy of PromoCodeVerificationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoCodeCopyWith<$Res> get promo {
  
  return $PromoCodeCopyWith<$Res>(_self.promo, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromoCodeVerificationResult].
extension PromoCodeVerificationResultPatterns on PromoCodeVerificationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoCodeVerificationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoCodeVerificationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoCodeVerificationResult value)  $default,){
final _that = this;
switch (_that) {
case _PromoCodeVerificationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoCodeVerificationResult value)?  $default,){
final _that = this;
switch (_that) {
case _PromoCodeVerificationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isValid,  String discount,  PromoCode promo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoCodeVerificationResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isValid,  String discount,  PromoCode promo)  $default,) {final _that = this;
switch (_that) {
case _PromoCodeVerificationResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isValid,  String discount,  PromoCode promo)?  $default,) {final _that = this;
switch (_that) {
case _PromoCodeVerificationResult() when $default != null:
return $default(_that.isValid,_that.discount,_that.promo);case _:
  return null;

}
}

}

/// @nodoc


class _PromoCodeVerificationResult implements PromoCodeVerificationResult {
  const _PromoCodeVerificationResult({required this.isValid, required this.discount, required this.promo});
  

@override final  bool isValid;
@override final  String discount;
@override final  PromoCode promo;

/// Create a copy of PromoCodeVerificationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoCodeVerificationResultCopyWith<_PromoCodeVerificationResult> get copyWith => __$PromoCodeVerificationResultCopyWithImpl<_PromoCodeVerificationResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoCodeVerificationResult&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.promo, promo) || other.promo == promo));
}


@override
int get hashCode => Object.hash(runtimeType,isValid,discount,promo);

@override
String toString() {
  return 'PromoCodeVerificationResult(isValid: $isValid, discount: $discount, promo: $promo)';
}


}

/// @nodoc
abstract mixin class _$PromoCodeVerificationResultCopyWith<$Res> implements $PromoCodeVerificationResultCopyWith<$Res> {
  factory _$PromoCodeVerificationResultCopyWith(_PromoCodeVerificationResult value, $Res Function(_PromoCodeVerificationResult) _then) = __$PromoCodeVerificationResultCopyWithImpl;
@override @useResult
$Res call({
 bool isValid, String discount, PromoCode promo
});


@override $PromoCodeCopyWith<$Res> get promo;

}
/// @nodoc
class __$PromoCodeVerificationResultCopyWithImpl<$Res>
    implements _$PromoCodeVerificationResultCopyWith<$Res> {
  __$PromoCodeVerificationResultCopyWithImpl(this._self, this._then);

  final _PromoCodeVerificationResult _self;
  final $Res Function(_PromoCodeVerificationResult) _then;

/// Create a copy of PromoCodeVerificationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isValid = null,Object? discount = null,Object? promo = null,}) {
  return _then(_PromoCodeVerificationResult(
isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,promo: null == promo ? _self.promo : promo // ignore: cast_nullable_to_non_nullable
as PromoCode,
  ));
}

/// Create a copy of PromoCodeVerificationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoCodeCopyWith<$Res> get promo {
  
  return $PromoCodeCopyWith<$Res>(_self.promo, (value) {
    return _then(_self.copyWith(promo: value));
  });
}
}

// dart format on
