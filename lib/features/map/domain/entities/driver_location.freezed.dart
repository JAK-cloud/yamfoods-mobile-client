// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DriverLocation {

 int get orderId; double get lat; double get lng; double? get heading;
/// Create a copy of DriverLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverLocationCopyWith<DriverLocation> get copyWith => _$DriverLocationCopyWithImpl<DriverLocation>(this as DriverLocation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverLocation&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.heading, heading) || other.heading == heading));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,lat,lng,heading);

@override
String toString() {
  return 'DriverLocation(orderId: $orderId, lat: $lat, lng: $lng, heading: $heading)';
}


}

/// @nodoc
abstract mixin class $DriverLocationCopyWith<$Res>  {
  factory $DriverLocationCopyWith(DriverLocation value, $Res Function(DriverLocation) _then) = _$DriverLocationCopyWithImpl;
@useResult
$Res call({
 int orderId, double lat, double lng, double? heading
});




}
/// @nodoc
class _$DriverLocationCopyWithImpl<$Res>
    implements $DriverLocationCopyWith<$Res> {
  _$DriverLocationCopyWithImpl(this._self, this._then);

  final DriverLocation _self;
  final $Res Function(DriverLocation) _then;

/// Create a copy of DriverLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? lat = null,Object? lng = null,Object? heading = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverLocation].
extension DriverLocationPatterns on DriverLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverLocation value)  $default,){
final _that = this;
switch (_that) {
case _DriverLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverLocation value)?  $default,){
final _that = this;
switch (_that) {
case _DriverLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int orderId,  double lat,  double lng,  double? heading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverLocation() when $default != null:
return $default(_that.orderId,_that.lat,_that.lng,_that.heading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int orderId,  double lat,  double lng,  double? heading)  $default,) {final _that = this;
switch (_that) {
case _DriverLocation():
return $default(_that.orderId,_that.lat,_that.lng,_that.heading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int orderId,  double lat,  double lng,  double? heading)?  $default,) {final _that = this;
switch (_that) {
case _DriverLocation() when $default != null:
return $default(_that.orderId,_that.lat,_that.lng,_that.heading);case _:
  return null;

}
}

}

/// @nodoc


class _DriverLocation implements DriverLocation {
  const _DriverLocation({required this.orderId, required this.lat, required this.lng, this.heading});
  

@override final  int orderId;
@override final  double lat;
@override final  double lng;
@override final  double? heading;

/// Create a copy of DriverLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverLocationCopyWith<_DriverLocation> get copyWith => __$DriverLocationCopyWithImpl<_DriverLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverLocation&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.heading, heading) || other.heading == heading));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,lat,lng,heading);

@override
String toString() {
  return 'DriverLocation(orderId: $orderId, lat: $lat, lng: $lng, heading: $heading)';
}


}

/// @nodoc
abstract mixin class _$DriverLocationCopyWith<$Res> implements $DriverLocationCopyWith<$Res> {
  factory _$DriverLocationCopyWith(_DriverLocation value, $Res Function(_DriverLocation) _then) = __$DriverLocationCopyWithImpl;
@override @useResult
$Res call({
 int orderId, double lat, double lng, double? heading
});




}
/// @nodoc
class __$DriverLocationCopyWithImpl<$Res>
    implements _$DriverLocationCopyWith<$Res> {
  __$DriverLocationCopyWithImpl(this._self, this._then);

  final _DriverLocation _self;
  final $Res Function(_DriverLocation) _then;

/// Create a copy of DriverLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? lat = null,Object? lng = null,Object? heading = freezed,}) {
  return _then(_DriverLocation(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
