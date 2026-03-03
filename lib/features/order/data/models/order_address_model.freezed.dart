// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderAddressModel {

 int get id; int get orderId; String? get address; String? get building; String? get houseNo;@JsonKey(fromJson: parseDoubleNullable) double? get lat;@JsonKey(fromJson: parseDoubleNullable) double? get lng; DateTime get createdAt;
/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderAddressModelCopyWith<OrderAddressModel> get copyWith => _$OrderAddressModelCopyWithImpl<OrderAddressModel>(this as OrderAddressModel, _$identity);

  /// Serializes this OrderAddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.address, address) || other.address == address)&&(identical(other.building, building) || other.building == building)&&(identical(other.houseNo, houseNo) || other.houseNo == houseNo)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,address,building,houseNo,lat,lng,createdAt);

@override
String toString() {
  return 'OrderAddressModel(id: $id, orderId: $orderId, address: $address, building: $building, houseNo: $houseNo, lat: $lat, lng: $lng, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderAddressModelCopyWith<$Res>  {
  factory $OrderAddressModelCopyWith(OrderAddressModel value, $Res Function(OrderAddressModel) _then) = _$OrderAddressModelCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, String? address, String? building, String? houseNo,@JsonKey(fromJson: parseDoubleNullable) double? lat,@JsonKey(fromJson: parseDoubleNullable) double? lng, DateTime createdAt
});




}
/// @nodoc
class _$OrderAddressModelCopyWithImpl<$Res>
    implements $OrderAddressModelCopyWith<$Res> {
  _$OrderAddressModelCopyWithImpl(this._self, this._then);

  final OrderAddressModel _self;
  final $Res Function(OrderAddressModel) _then;

/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? address = freezed,Object? building = freezed,Object? houseNo = freezed,Object? lat = freezed,Object? lng = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,building: freezed == building ? _self.building : building // ignore: cast_nullable_to_non_nullable
as String?,houseNo: freezed == houseNo ? _self.houseNo : houseNo // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderAddressModel].
extension OrderAddressModelPatterns on OrderAddressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderAddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderAddressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderAddressModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderAddressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderAddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderAddressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderId,  String? address,  String? building,  String? houseNo, @JsonKey(fromJson: parseDoubleNullable)  double? lat, @JsonKey(fromJson: parseDoubleNullable)  double? lng,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderAddressModel() when $default != null:
return $default(_that.id,_that.orderId,_that.address,_that.building,_that.houseNo,_that.lat,_that.lng,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderId,  String? address,  String? building,  String? houseNo, @JsonKey(fromJson: parseDoubleNullable)  double? lat, @JsonKey(fromJson: parseDoubleNullable)  double? lng,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderAddressModel():
return $default(_that.id,_that.orderId,_that.address,_that.building,_that.houseNo,_that.lat,_that.lng,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderId,  String? address,  String? building,  String? houseNo, @JsonKey(fromJson: parseDoubleNullable)  double? lat, @JsonKey(fromJson: parseDoubleNullable)  double? lng,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderAddressModel() when $default != null:
return $default(_that.id,_that.orderId,_that.address,_that.building,_that.houseNo,_that.lat,_that.lng,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderAddressModel extends OrderAddressModel {
  const _OrderAddressModel({required this.id, required this.orderId, this.address, this.building, this.houseNo, @JsonKey(fromJson: parseDoubleNullable) this.lat, @JsonKey(fromJson: parseDoubleNullable) this.lng, required this.createdAt}): super._();
  factory _OrderAddressModel.fromJson(Map<String, dynamic> json) => _$OrderAddressModelFromJson(json);

@override final  int id;
@override final  int orderId;
@override final  String? address;
@override final  String? building;
@override final  String? houseNo;
@override@JsonKey(fromJson: parseDoubleNullable) final  double? lat;
@override@JsonKey(fromJson: parseDoubleNullable) final  double? lng;
@override final  DateTime createdAt;

/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderAddressModelCopyWith<_OrderAddressModel> get copyWith => __$OrderAddressModelCopyWithImpl<_OrderAddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderAddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.address, address) || other.address == address)&&(identical(other.building, building) || other.building == building)&&(identical(other.houseNo, houseNo) || other.houseNo == houseNo)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,address,building,houseNo,lat,lng,createdAt);

@override
String toString() {
  return 'OrderAddressModel(id: $id, orderId: $orderId, address: $address, building: $building, houseNo: $houseNo, lat: $lat, lng: $lng, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderAddressModelCopyWith<$Res> implements $OrderAddressModelCopyWith<$Res> {
  factory _$OrderAddressModelCopyWith(_OrderAddressModel value, $Res Function(_OrderAddressModel) _then) = __$OrderAddressModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, String? address, String? building, String? houseNo,@JsonKey(fromJson: parseDoubleNullable) double? lat,@JsonKey(fromJson: parseDoubleNullable) double? lng, DateTime createdAt
});




}
/// @nodoc
class __$OrderAddressModelCopyWithImpl<$Res>
    implements _$OrderAddressModelCopyWith<$Res> {
  __$OrderAddressModelCopyWithImpl(this._self, this._then);

  final _OrderAddressModel _self;
  final $Res Function(_OrderAddressModel) _then;

/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? address = freezed,Object? building = freezed,Object? houseNo = freezed,Object? lat = freezed,Object? lng = freezed,Object? createdAt = null,}) {
  return _then(_OrderAddressModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,building: freezed == building ? _self.building : building // ignore: cast_nullable_to_non_nullable
as String?,houseNo: freezed == houseNo ? _self.houseNo : houseNo // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
