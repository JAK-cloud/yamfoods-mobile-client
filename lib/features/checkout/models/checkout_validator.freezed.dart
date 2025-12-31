// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutValidation {

 bool get isValid; String? get addressError; String? get promoCodeError; String? get pointsError; String? get scheduleError; String? get generalError;
/// Create a copy of CheckoutValidation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutValidationCopyWith<CheckoutValidation> get copyWith => _$CheckoutValidationCopyWithImpl<CheckoutValidation>(this as CheckoutValidation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutValidation&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.addressError, addressError) || other.addressError == addressError)&&(identical(other.promoCodeError, promoCodeError) || other.promoCodeError == promoCodeError)&&(identical(other.pointsError, pointsError) || other.pointsError == pointsError)&&(identical(other.scheduleError, scheduleError) || other.scheduleError == scheduleError)&&(identical(other.generalError, generalError) || other.generalError == generalError));
}


@override
int get hashCode => Object.hash(runtimeType,isValid,addressError,promoCodeError,pointsError,scheduleError,generalError);

@override
String toString() {
  return 'CheckoutValidation(isValid: $isValid, addressError: $addressError, promoCodeError: $promoCodeError, pointsError: $pointsError, scheduleError: $scheduleError, generalError: $generalError)';
}


}

/// @nodoc
abstract mixin class $CheckoutValidationCopyWith<$Res>  {
  factory $CheckoutValidationCopyWith(CheckoutValidation value, $Res Function(CheckoutValidation) _then) = _$CheckoutValidationCopyWithImpl;
@useResult
$Res call({
 bool isValid, String? addressError, String? promoCodeError, String? pointsError, String? scheduleError, String? generalError
});




}
/// @nodoc
class _$CheckoutValidationCopyWithImpl<$Res>
    implements $CheckoutValidationCopyWith<$Res> {
  _$CheckoutValidationCopyWithImpl(this._self, this._then);

  final CheckoutValidation _self;
  final $Res Function(CheckoutValidation) _then;

/// Create a copy of CheckoutValidation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isValid = null,Object? addressError = freezed,Object? promoCodeError = freezed,Object? pointsError = freezed,Object? scheduleError = freezed,Object? generalError = freezed,}) {
  return _then(_self.copyWith(
isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,addressError: freezed == addressError ? _self.addressError : addressError // ignore: cast_nullable_to_non_nullable
as String?,promoCodeError: freezed == promoCodeError ? _self.promoCodeError : promoCodeError // ignore: cast_nullable_to_non_nullable
as String?,pointsError: freezed == pointsError ? _self.pointsError : pointsError // ignore: cast_nullable_to_non_nullable
as String?,scheduleError: freezed == scheduleError ? _self.scheduleError : scheduleError // ignore: cast_nullable_to_non_nullable
as String?,generalError: freezed == generalError ? _self.generalError : generalError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutValidation].
extension CheckoutValidationPatterns on CheckoutValidation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutValidation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutValidation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutValidation value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutValidation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutValidation value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutValidation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isValid,  String? addressError,  String? promoCodeError,  String? pointsError,  String? scheduleError,  String? generalError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutValidation() when $default != null:
return $default(_that.isValid,_that.addressError,_that.promoCodeError,_that.pointsError,_that.scheduleError,_that.generalError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isValid,  String? addressError,  String? promoCodeError,  String? pointsError,  String? scheduleError,  String? generalError)  $default,) {final _that = this;
switch (_that) {
case _CheckoutValidation():
return $default(_that.isValid,_that.addressError,_that.promoCodeError,_that.pointsError,_that.scheduleError,_that.generalError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isValid,  String? addressError,  String? promoCodeError,  String? pointsError,  String? scheduleError,  String? generalError)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutValidation() when $default != null:
return $default(_that.isValid,_that.addressError,_that.promoCodeError,_that.pointsError,_that.scheduleError,_that.generalError);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutValidation implements CheckoutValidation {
  const _CheckoutValidation({required this.isValid, this.addressError, this.promoCodeError, this.pointsError, this.scheduleError, this.generalError});
  

@override final  bool isValid;
@override final  String? addressError;
@override final  String? promoCodeError;
@override final  String? pointsError;
@override final  String? scheduleError;
@override final  String? generalError;

/// Create a copy of CheckoutValidation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutValidationCopyWith<_CheckoutValidation> get copyWith => __$CheckoutValidationCopyWithImpl<_CheckoutValidation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutValidation&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.addressError, addressError) || other.addressError == addressError)&&(identical(other.promoCodeError, promoCodeError) || other.promoCodeError == promoCodeError)&&(identical(other.pointsError, pointsError) || other.pointsError == pointsError)&&(identical(other.scheduleError, scheduleError) || other.scheduleError == scheduleError)&&(identical(other.generalError, generalError) || other.generalError == generalError));
}


@override
int get hashCode => Object.hash(runtimeType,isValid,addressError,promoCodeError,pointsError,scheduleError,generalError);

@override
String toString() {
  return 'CheckoutValidation(isValid: $isValid, addressError: $addressError, promoCodeError: $promoCodeError, pointsError: $pointsError, scheduleError: $scheduleError, generalError: $generalError)';
}


}

/// @nodoc
abstract mixin class _$CheckoutValidationCopyWith<$Res> implements $CheckoutValidationCopyWith<$Res> {
  factory _$CheckoutValidationCopyWith(_CheckoutValidation value, $Res Function(_CheckoutValidation) _then) = __$CheckoutValidationCopyWithImpl;
@override @useResult
$Res call({
 bool isValid, String? addressError, String? promoCodeError, String? pointsError, String? scheduleError, String? generalError
});




}
/// @nodoc
class __$CheckoutValidationCopyWithImpl<$Res>
    implements _$CheckoutValidationCopyWith<$Res> {
  __$CheckoutValidationCopyWithImpl(this._self, this._then);

  final _CheckoutValidation _self;
  final $Res Function(_CheckoutValidation) _then;

/// Create a copy of CheckoutValidation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isValid = null,Object? addressError = freezed,Object? promoCodeError = freezed,Object? pointsError = freezed,Object? scheduleError = freezed,Object? generalError = freezed,}) {
  return _then(_CheckoutValidation(
isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,addressError: freezed == addressError ? _self.addressError : addressError // ignore: cast_nullable_to_non_nullable
as String?,promoCodeError: freezed == promoCodeError ? _self.promoCodeError : promoCodeError // ignore: cast_nullable_to_non_nullable
as String?,pointsError: freezed == pointsError ? _self.pointsError : pointsError // ignore: cast_nullable_to_non_nullable
as String?,scheduleError: freezed == scheduleError ? _self.scheduleError : scheduleError // ignore: cast_nullable_to_non_nullable
as String?,generalError: freezed == generalError ? _self.generalError : generalError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
