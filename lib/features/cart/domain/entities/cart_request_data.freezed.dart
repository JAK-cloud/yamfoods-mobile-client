// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartRequestData {

 int get productId; int get quantity;
/// Create a copy of CartRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartRequestDataCopyWith<CartRequestData> get copyWith => _$CartRequestDataCopyWithImpl<CartRequestData>(this as CartRequestData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartRequestData&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'CartRequestData(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CartRequestDataCopyWith<$Res>  {
  factory $CartRequestDataCopyWith(CartRequestData value, $Res Function(CartRequestData) _then) = _$CartRequestDataCopyWithImpl;
@useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class _$CartRequestDataCopyWithImpl<$Res>
    implements $CartRequestDataCopyWith<$Res> {
  _$CartRequestDataCopyWithImpl(this._self, this._then);

  final CartRequestData _self;
  final $Res Function(CartRequestData) _then;

/// Create a copy of CartRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartRequestData].
extension CartRequestDataPatterns on CartRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CartRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CartRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartRequestData() when $default != null:
return $default(_that.productId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _CartRequestData():
return $default(_that.productId,_that.quantity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _CartRequestData() when $default != null:
return $default(_that.productId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CartRequestData implements CartRequestData {
  const _CartRequestData({required this.productId, required this.quantity});
  

@override final  int productId;
@override final  int quantity;

/// Create a copy of CartRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartRequestDataCopyWith<_CartRequestData> get copyWith => __$CartRequestDataCopyWithImpl<_CartRequestData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartRequestData&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'CartRequestData(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CartRequestDataCopyWith<$Res> implements $CartRequestDataCopyWith<$Res> {
  factory _$CartRequestDataCopyWith(_CartRequestData value, $Res Function(_CartRequestData) _then) = __$CartRequestDataCopyWithImpl;
@override @useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class __$CartRequestDataCopyWithImpl<$Res>
    implements _$CartRequestDataCopyWith<$Res> {
  __$CartRequestDataCopyWithImpl(this._self, this._then);

  final _CartRequestData _self;
  final $Res Function(_CartRequestData) _then;

/// Create a copy of CartRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(_CartRequestData(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
