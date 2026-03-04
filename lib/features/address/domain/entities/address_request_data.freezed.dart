// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressRequestData {

 String get address; String? get receiverPhone; String? get receiverName; String? get label; double get lat; double get lng;
/// Create a copy of AddressRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressRequestDataCopyWith<AddressRequestData> get copyWith => _$AddressRequestDataCopyWithImpl<AddressRequestData>(this as AddressRequestData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressRequestData&&(identical(other.address, address) || other.address == address)&&(identical(other.receiverPhone, receiverPhone) || other.receiverPhone == receiverPhone)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}


@override
int get hashCode => Object.hash(runtimeType,address,receiverPhone,receiverName,label,lat,lng);

@override
String toString() {
  return 'AddressRequestData(address: $address, receiverPhone: $receiverPhone, receiverName: $receiverName, label: $label, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $AddressRequestDataCopyWith<$Res>  {
  factory $AddressRequestDataCopyWith(AddressRequestData value, $Res Function(AddressRequestData) _then) = _$AddressRequestDataCopyWithImpl;
@useResult
$Res call({
 String address, String? receiverPhone, String? receiverName, String? label, double lat, double lng
});




}
/// @nodoc
class _$AddressRequestDataCopyWithImpl<$Res>
    implements $AddressRequestDataCopyWith<$Res> {
  _$AddressRequestDataCopyWithImpl(this._self, this._then);

  final AddressRequestData _self;
  final $Res Function(AddressRequestData) _then;

/// Create a copy of AddressRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? receiverPhone = freezed,Object? receiverName = freezed,Object? label = freezed,Object? lat = null,Object? lng = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,receiverPhone: freezed == receiverPhone ? _self.receiverPhone : receiverPhone // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressRequestData].
extension AddressRequestDataPatterns on AddressRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressRequestData value)  $default,){
final _that = this;
switch (_that) {
case _AddressRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _AddressRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  String? receiverPhone,  String? receiverName,  String? label,  double lat,  double lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressRequestData() when $default != null:
return $default(_that.address,_that.receiverPhone,_that.receiverName,_that.label,_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  String? receiverPhone,  String? receiverName,  String? label,  double lat,  double lng)  $default,) {final _that = this;
switch (_that) {
case _AddressRequestData():
return $default(_that.address,_that.receiverPhone,_that.receiverName,_that.label,_that.lat,_that.lng);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  String? receiverPhone,  String? receiverName,  String? label,  double lat,  double lng)?  $default,) {final _that = this;
switch (_that) {
case _AddressRequestData() when $default != null:
return $default(_that.address,_that.receiverPhone,_that.receiverName,_that.label,_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc


class _AddressRequestData implements AddressRequestData {
  const _AddressRequestData({required this.address, this.receiverPhone, this.receiverName, this.label, required this.lat, required this.lng});
  

@override final  String address;
@override final  String? receiverPhone;
@override final  String? receiverName;
@override final  String? label;
@override final  double lat;
@override final  double lng;

/// Create a copy of AddressRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressRequestDataCopyWith<_AddressRequestData> get copyWith => __$AddressRequestDataCopyWithImpl<_AddressRequestData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressRequestData&&(identical(other.address, address) || other.address == address)&&(identical(other.receiverPhone, receiverPhone) || other.receiverPhone == receiverPhone)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.label, label) || other.label == label)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}


@override
int get hashCode => Object.hash(runtimeType,address,receiverPhone,receiverName,label,lat,lng);

@override
String toString() {
  return 'AddressRequestData(address: $address, receiverPhone: $receiverPhone, receiverName: $receiverName, label: $label, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$AddressRequestDataCopyWith<$Res> implements $AddressRequestDataCopyWith<$Res> {
  factory _$AddressRequestDataCopyWith(_AddressRequestData value, $Res Function(_AddressRequestData) _then) = __$AddressRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String address, String? receiverPhone, String? receiverName, String? label, double lat, double lng
});




}
/// @nodoc
class __$AddressRequestDataCopyWithImpl<$Res>
    implements _$AddressRequestDataCopyWith<$Res> {
  __$AddressRequestDataCopyWithImpl(this._self, this._then);

  final _AddressRequestData _self;
  final $Res Function(_AddressRequestData) _then;

/// Create a copy of AddressRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? receiverPhone = freezed,Object? receiverName = freezed,Object? label = freezed,Object? lat = null,Object? lng = null,}) {
  return _then(_AddressRequestData(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,receiverPhone: freezed == receiverPhone ? _self.receiverPhone : receiverPhone // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
