// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryModel {

 AddressLocationModel get restaurantLocation; AddressLocationModel get customerLocation; RouteModel get route;
/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryModelCopyWith<DeliveryModel> get copyWith => _$DeliveryModelCopyWithImpl<DeliveryModel>(this as DeliveryModel, _$identity);

  /// Serializes this DeliveryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryModel&&(identical(other.restaurantLocation, restaurantLocation) || other.restaurantLocation == restaurantLocation)&&(identical(other.customerLocation, customerLocation) || other.customerLocation == customerLocation)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restaurantLocation,customerLocation,route);

@override
String toString() {
  return 'DeliveryModel(restaurantLocation: $restaurantLocation, customerLocation: $customerLocation, route: $route)';
}


}

/// @nodoc
abstract mixin class $DeliveryModelCopyWith<$Res>  {
  factory $DeliveryModelCopyWith(DeliveryModel value, $Res Function(DeliveryModel) _then) = _$DeliveryModelCopyWithImpl;
@useResult
$Res call({
 AddressLocationModel restaurantLocation, AddressLocationModel customerLocation, RouteModel route
});


$AddressLocationModelCopyWith<$Res> get restaurantLocation;$AddressLocationModelCopyWith<$Res> get customerLocation;$RouteModelCopyWith<$Res> get route;

}
/// @nodoc
class _$DeliveryModelCopyWithImpl<$Res>
    implements $DeliveryModelCopyWith<$Res> {
  _$DeliveryModelCopyWithImpl(this._self, this._then);

  final DeliveryModel _self;
  final $Res Function(DeliveryModel) _then;

/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restaurantLocation = null,Object? customerLocation = null,Object? route = null,}) {
  return _then(_self.copyWith(
restaurantLocation: null == restaurantLocation ? _self.restaurantLocation : restaurantLocation // ignore: cast_nullable_to_non_nullable
as AddressLocationModel,customerLocation: null == customerLocation ? _self.customerLocation : customerLocation // ignore: cast_nullable_to_non_nullable
as AddressLocationModel,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as RouteModel,
  ));
}
/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<$Res> get restaurantLocation {
  
  return $AddressLocationModelCopyWith<$Res>(_self.restaurantLocation, (value) {
    return _then(_self.copyWith(restaurantLocation: value));
  });
}/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<$Res> get customerLocation {
  
  return $AddressLocationModelCopyWith<$Res>(_self.customerLocation, (value) {
    return _then(_self.copyWith(customerLocation: value));
  });
}/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteModelCopyWith<$Res> get route {
  
  return $RouteModelCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeliveryModel].
extension DeliveryModelPatterns on DeliveryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryModel value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressLocationModel restaurantLocation,  AddressLocationModel customerLocation,  RouteModel route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryModel() when $default != null:
return $default(_that.restaurantLocation,_that.customerLocation,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressLocationModel restaurantLocation,  AddressLocationModel customerLocation,  RouteModel route)  $default,) {final _that = this;
switch (_that) {
case _DeliveryModel():
return $default(_that.restaurantLocation,_that.customerLocation,_that.route);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressLocationModel restaurantLocation,  AddressLocationModel customerLocation,  RouteModel route)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryModel() when $default != null:
return $default(_that.restaurantLocation,_that.customerLocation,_that.route);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryModel implements DeliveryModel {
  const _DeliveryModel({required this.restaurantLocation, required this.customerLocation, required this.route});
  factory _DeliveryModel.fromJson(Map<String, dynamic> json) => _$DeliveryModelFromJson(json);

@override final  AddressLocationModel restaurantLocation;
@override final  AddressLocationModel customerLocation;
@override final  RouteModel route;

/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryModelCopyWith<_DeliveryModel> get copyWith => __$DeliveryModelCopyWithImpl<_DeliveryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryModel&&(identical(other.restaurantLocation, restaurantLocation) || other.restaurantLocation == restaurantLocation)&&(identical(other.customerLocation, customerLocation) || other.customerLocation == customerLocation)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restaurantLocation,customerLocation,route);

@override
String toString() {
  return 'DeliveryModel(restaurantLocation: $restaurantLocation, customerLocation: $customerLocation, route: $route)';
}


}

/// @nodoc
abstract mixin class _$DeliveryModelCopyWith<$Res> implements $DeliveryModelCopyWith<$Res> {
  factory _$DeliveryModelCopyWith(_DeliveryModel value, $Res Function(_DeliveryModel) _then) = __$DeliveryModelCopyWithImpl;
@override @useResult
$Res call({
 AddressLocationModel restaurantLocation, AddressLocationModel customerLocation, RouteModel route
});


@override $AddressLocationModelCopyWith<$Res> get restaurantLocation;@override $AddressLocationModelCopyWith<$Res> get customerLocation;@override $RouteModelCopyWith<$Res> get route;

}
/// @nodoc
class __$DeliveryModelCopyWithImpl<$Res>
    implements _$DeliveryModelCopyWith<$Res> {
  __$DeliveryModelCopyWithImpl(this._self, this._then);

  final _DeliveryModel _self;
  final $Res Function(_DeliveryModel) _then;

/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restaurantLocation = null,Object? customerLocation = null,Object? route = null,}) {
  return _then(_DeliveryModel(
restaurantLocation: null == restaurantLocation ? _self.restaurantLocation : restaurantLocation // ignore: cast_nullable_to_non_nullable
as AddressLocationModel,customerLocation: null == customerLocation ? _self.customerLocation : customerLocation // ignore: cast_nullable_to_non_nullable
as AddressLocationModel,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as RouteModel,
  ));
}

/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<$Res> get restaurantLocation {
  
  return $AddressLocationModelCopyWith<$Res>(_self.restaurantLocation, (value) {
    return _then(_self.copyWith(restaurantLocation: value));
  });
}/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<$Res> get customerLocation {
  
  return $AddressLocationModelCopyWith<$Res>(_self.customerLocation, (value) {
    return _then(_self.copyWith(customerLocation: value));
  });
}/// Create a copy of DeliveryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteModelCopyWith<$Res> get route {
  
  return $RouteModelCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}

// dart format on
