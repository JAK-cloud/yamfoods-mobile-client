// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PromoCode {

 int get id; String get code; String get discount; String get minOrderAmount; DateTime get startDate; DateTime get endDate; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of PromoCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoCodeCopyWith<PromoCode> get copyWith => _$PromoCodeCopyWithImpl<PromoCode>(this as PromoCode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoCode&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,discount,minOrderAmount,startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'PromoCode(id: $id, code: $code, discount: $discount, minOrderAmount: $minOrderAmount, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PromoCodeCopyWith<$Res>  {
  factory $PromoCodeCopyWith(PromoCode value, $Res Function(PromoCode) _then) = _$PromoCodeCopyWithImpl;
@useResult
$Res call({
 int id, String code, String discount, String minOrderAmount, DateTime startDate, DateTime endDate, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$PromoCodeCopyWithImpl<$Res>
    implements $PromoCodeCopyWith<$Res> {
  _$PromoCodeCopyWithImpl(this._self, this._then);

  final PromoCode _self;
  final $Res Function(PromoCode) _then;

/// Create a copy of PromoCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? discount = null,Object? minOrderAmount = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoCode].
extension PromoCodePatterns on PromoCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoCode value)  $default,){
final _that = this;
switch (_that) {
case _PromoCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoCode value)?  $default,){
final _that = this;
switch (_that) {
case _PromoCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String discount,  String minOrderAmount,  DateTime startDate,  DateTime endDate,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoCode() when $default != null:
return $default(_that.id,_that.code,_that.discount,_that.minOrderAmount,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String discount,  String minOrderAmount,  DateTime startDate,  DateTime endDate,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PromoCode():
return $default(_that.id,_that.code,_that.discount,_that.minOrderAmount,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String discount,  String minOrderAmount,  DateTime startDate,  DateTime endDate,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PromoCode() when $default != null:
return $default(_that.id,_that.code,_that.discount,_that.minOrderAmount,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PromoCode implements PromoCode {
  const _PromoCode({required this.id, required this.code, required this.discount, required this.minOrderAmount, required this.startDate, required this.endDate, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String code;
@override final  String discount;
@override final  String minOrderAmount;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of PromoCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoCodeCopyWith<_PromoCode> get copyWith => __$PromoCodeCopyWithImpl<_PromoCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoCode&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,discount,minOrderAmount,startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'PromoCode(id: $id, code: $code, discount: $discount, minOrderAmount: $minOrderAmount, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PromoCodeCopyWith<$Res> implements $PromoCodeCopyWith<$Res> {
  factory _$PromoCodeCopyWith(_PromoCode value, $Res Function(_PromoCode) _then) = __$PromoCodeCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String discount, String minOrderAmount, DateTime startDate, DateTime endDate, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$PromoCodeCopyWithImpl<$Res>
    implements _$PromoCodeCopyWith<$Res> {
  __$PromoCodeCopyWithImpl(this._self, this._then);

  final _PromoCode _self;
  final $Res Function(_PromoCode) _then;

/// Create a copy of PromoCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? discount = null,Object? minOrderAmount = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PromoCode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
