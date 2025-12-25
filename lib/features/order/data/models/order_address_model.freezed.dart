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

 int get id; int get orderId; String? get subcity; String? get street; String? get building; String? get houseNo; String? get note;@JsonKey(fromJson: parseDouble) double? get lat;@JsonKey(fromJson: parseDouble) double? get lng; AddressLocationModel? get location; DateTime get createdAt;
/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderAddressModelCopyWith<OrderAddressModel> get copyWith => _$OrderAddressModelCopyWithImpl<OrderAddressModel>(this as OrderAddressModel, _$identity);

  /// Serializes this OrderAddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.subcity, subcity) || other.subcity == subcity)&&(identical(other.street, street) || other.street == street)&&(identical(other.building, building) || other.building == building)&&(identical(other.houseNo, houseNo) || other.houseNo == houseNo)&&(identical(other.note, note) || other.note == note)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,subcity,street,building,houseNo,note,lat,lng,location,createdAt);

@override
String toString() {
  return 'OrderAddressModel(id: $id, orderId: $orderId, subcity: $subcity, street: $street, building: $building, houseNo: $houseNo, note: $note, lat: $lat, lng: $lng, location: $location, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderAddressModelCopyWith<$Res>  {
  factory $OrderAddressModelCopyWith(OrderAddressModel value, $Res Function(OrderAddressModel) _then) = _$OrderAddressModelCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, String? subcity, String? street, String? building, String? houseNo, String? note,@JsonKey(fromJson: parseDouble) double? lat,@JsonKey(fromJson: parseDouble) double? lng, AddressLocationModel? location, DateTime createdAt
});


$AddressLocationModelCopyWith<$Res>? get location;

}
/// @nodoc
class _$OrderAddressModelCopyWithImpl<$Res>
    implements $OrderAddressModelCopyWith<$Res> {
  _$OrderAddressModelCopyWithImpl(this._self, this._then);

  final OrderAddressModel _self;
  final $Res Function(OrderAddressModel) _then;

/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? subcity = freezed,Object? street = freezed,Object? building = freezed,Object? houseNo = freezed,Object? note = freezed,Object? lat = freezed,Object? lng = freezed,Object? location = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,subcity: freezed == subcity ? _self.subcity : subcity // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,building: freezed == building ? _self.building : building // ignore: cast_nullable_to_non_nullable
as String?,houseNo: freezed == houseNo ? _self.houseNo : houseNo // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AddressLocationModel?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AddressLocationModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderId,  String? subcity,  String? street,  String? building,  String? houseNo,  String? note, @JsonKey(fromJson: parseDouble)  double? lat, @JsonKey(fromJson: parseDouble)  double? lng,  AddressLocationModel? location,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderAddressModel() when $default != null:
return $default(_that.id,_that.orderId,_that.subcity,_that.street,_that.building,_that.houseNo,_that.note,_that.lat,_that.lng,_that.location,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderId,  String? subcity,  String? street,  String? building,  String? houseNo,  String? note, @JsonKey(fromJson: parseDouble)  double? lat, @JsonKey(fromJson: parseDouble)  double? lng,  AddressLocationModel? location,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderAddressModel():
return $default(_that.id,_that.orderId,_that.subcity,_that.street,_that.building,_that.houseNo,_that.note,_that.lat,_that.lng,_that.location,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderId,  String? subcity,  String? street,  String? building,  String? houseNo,  String? note, @JsonKey(fromJson: parseDouble)  double? lat, @JsonKey(fromJson: parseDouble)  double? lng,  AddressLocationModel? location,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderAddressModel() when $default != null:
return $default(_that.id,_that.orderId,_that.subcity,_that.street,_that.building,_that.houseNo,_that.note,_that.lat,_that.lng,_that.location,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderAddressModel extends OrderAddressModel {
  const _OrderAddressModel({required this.id, required this.orderId, this.subcity, this.street, this.building, this.houseNo, this.note, @JsonKey(fromJson: parseDouble) this.lat, @JsonKey(fromJson: parseDouble) this.lng, this.location, required this.createdAt}): super._();
  factory _OrderAddressModel.fromJson(Map<String, dynamic> json) => _$OrderAddressModelFromJson(json);

@override final  int id;
@override final  int orderId;
@override final  String? subcity;
@override final  String? street;
@override final  String? building;
@override final  String? houseNo;
@override final  String? note;
@override@JsonKey(fromJson: parseDouble) final  double? lat;
@override@JsonKey(fromJson: parseDouble) final  double? lng;
@override final  AddressLocationModel? location;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.subcity, subcity) || other.subcity == subcity)&&(identical(other.street, street) || other.street == street)&&(identical(other.building, building) || other.building == building)&&(identical(other.houseNo, houseNo) || other.houseNo == houseNo)&&(identical(other.note, note) || other.note == note)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,subcity,street,building,houseNo,note,lat,lng,location,createdAt);

@override
String toString() {
  return 'OrderAddressModel(id: $id, orderId: $orderId, subcity: $subcity, street: $street, building: $building, houseNo: $houseNo, note: $note, lat: $lat, lng: $lng, location: $location, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderAddressModelCopyWith<$Res> implements $OrderAddressModelCopyWith<$Res> {
  factory _$OrderAddressModelCopyWith(_OrderAddressModel value, $Res Function(_OrderAddressModel) _then) = __$OrderAddressModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, String? subcity, String? street, String? building, String? houseNo, String? note,@JsonKey(fromJson: parseDouble) double? lat,@JsonKey(fromJson: parseDouble) double? lng, AddressLocationModel? location, DateTime createdAt
});


@override $AddressLocationModelCopyWith<$Res>? get location;

}
/// @nodoc
class __$OrderAddressModelCopyWithImpl<$Res>
    implements _$OrderAddressModelCopyWith<$Res> {
  __$OrderAddressModelCopyWithImpl(this._self, this._then);

  final _OrderAddressModel _self;
  final $Res Function(_OrderAddressModel) _then;

/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? subcity = freezed,Object? street = freezed,Object? building = freezed,Object? houseNo = freezed,Object? note = freezed,Object? lat = freezed,Object? lng = freezed,Object? location = freezed,Object? createdAt = null,}) {
  return _then(_OrderAddressModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,subcity: freezed == subcity ? _self.subcity : subcity // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,building: freezed == building ? _self.building : building // ignore: cast_nullable_to_non_nullable
as String?,houseNo: freezed == houseNo ? _self.houseNo : houseNo // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AddressLocationModel?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of OrderAddressModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AddressLocationModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
