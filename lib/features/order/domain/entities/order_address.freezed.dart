// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderAddress {

 int get id; int get orderId; String get address; String? get receiverPhone; String? get receiverName; String? get label; double? get lat; double? get lng; DateTime get createdAt;
/// Create a copy of OrderAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderAddressCopyWith<OrderAddress> get copyWith => _$OrderAddressCopyWithImpl<OrderAddress>(this as OrderAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.address, address) || other.address == address)&&(identical(other.receiverPhone, receiverPhone) || other.receiverPhone == receiverPhone)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,orderId,address,receiverPhone,receiverName,label,lat,lng,createdAt);

@override
String toString() {
  return 'OrderAddress(id: $id, orderId: $orderId, address: $address, receiverPhone: $receiverPhone, receiverName: $receiverName, label: $label, lat: $lat, lng: $lng, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderAddressCopyWith<$Res>  {
  factory $OrderAddressCopyWith(OrderAddress value, $Res Function(OrderAddress) _then) = _$OrderAddressCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, String address, String? receiverPhone, String? receiverName, String? label, double? lat, double? lng, DateTime createdAt
});




}
/// @nodoc
class _$OrderAddressCopyWithImpl<$Res>
    implements $OrderAddressCopyWith<$Res> {
  _$OrderAddressCopyWithImpl(this._self, this._then);

  final OrderAddress _self;
  final $Res Function(OrderAddress) _then;

/// Create a copy of OrderAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? address = null,Object? receiverPhone = freezed,Object? receiverName = freezed,Object? label = freezed,Object? lat = freezed,Object? lng = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,receiverPhone: freezed == receiverPhone ? _self.receiverPhone : receiverPhone // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderAddress].
extension OrderAddressPatterns on OrderAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderAddress value)  $default,){
final _that = this;
switch (_that) {
case _OrderAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderAddress value)?  $default,){
final _that = this;
switch (_that) {
case _OrderAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderId,  String address,  String? receiverPhone,  String? receiverName,  String? label,  double? lat,  double? lng,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderAddress() when $default != null:
return $default(_that.id,_that.orderId,_that.address,_that.receiverPhone,_that.receiverName,_that.label,_that.lat,_that.lng,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderId,  String address,  String? receiverPhone,  String? receiverName,  String? label,  double? lat,  double? lng,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderAddress():
return $default(_that.id,_that.orderId,_that.address,_that.receiverPhone,_that.receiverName,_that.label,_that.lat,_that.lng,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderId,  String address,  String? receiverPhone,  String? receiverName,  String? label,  double? lat,  double? lng,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderAddress() when $default != null:
return $default(_that.id,_that.orderId,_that.address,_that.receiverPhone,_that.receiverName,_that.label,_that.lat,_that.lng,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _OrderAddress implements OrderAddress {
  const _OrderAddress({required this.id, required this.orderId, required this.address, this.receiverPhone, this.receiverName, this.label, this.lat, this.lng, required this.createdAt});
  

@override final  int id;
@override final  int orderId;
@override final  String address;
@override final  String? receiverPhone;
@override final  String? receiverName;
@override final  String? label;
@override final  double? lat;
@override final  double? lng;
@override final  DateTime createdAt;

/// Create a copy of OrderAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderAddressCopyWith<_OrderAddress> get copyWith => __$OrderAddressCopyWithImpl<_OrderAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.address, address) || other.address == address)&&(identical(other.receiverPhone, receiverPhone) || other.receiverPhone == receiverPhone)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,orderId,address,receiverPhone,receiverName,label,lat,lng,createdAt);

@override
String toString() {
  return 'OrderAddress(id: $id, orderId: $orderId, address: $address, receiverPhone: $receiverPhone, receiverName: $receiverName, label: $label, lat: $lat, lng: $lng, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderAddressCopyWith<$Res> implements $OrderAddressCopyWith<$Res> {
  factory _$OrderAddressCopyWith(_OrderAddress value, $Res Function(_OrderAddress) _then) = __$OrderAddressCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, String address, String? receiverPhone, String? receiverName, String? label, double? lat, double? lng, DateTime createdAt
});




}
/// @nodoc
class __$OrderAddressCopyWithImpl<$Res>
    implements _$OrderAddressCopyWith<$Res> {
  __$OrderAddressCopyWithImpl(this._self, this._then);

  final _OrderAddress _self;
  final $Res Function(_OrderAddress) _then;

/// Create a copy of OrderAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? address = null,Object? receiverPhone = freezed,Object? receiverName = freezed,Object? label = freezed,Object? lat = freezed,Object? lng = freezed,Object? createdAt = null,}) {
  return _then(_OrderAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,receiverPhone: freezed == receiverPhone ? _self.receiverPhone : receiverPhone // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
