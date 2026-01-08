// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Delivery {

 AddressLocation get restaurantLocation; AddressLocation get customerLocation; Route get route;
/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryCopyWith<Delivery> get copyWith => _$DeliveryCopyWithImpl<Delivery>(this as Delivery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Delivery&&(identical(other.restaurantLocation, restaurantLocation) || other.restaurantLocation == restaurantLocation)&&(identical(other.customerLocation, customerLocation) || other.customerLocation == customerLocation)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,restaurantLocation,customerLocation,route);

@override
String toString() {
  return 'Delivery(restaurantLocation: $restaurantLocation, customerLocation: $customerLocation, route: $route)';
}


}

/// @nodoc
abstract mixin class $DeliveryCopyWith<$Res>  {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) _then) = _$DeliveryCopyWithImpl;
@useResult
$Res call({
 AddressLocation restaurantLocation, AddressLocation customerLocation, Route route
});


$AddressLocationCopyWith<$Res> get restaurantLocation;$AddressLocationCopyWith<$Res> get customerLocation;$RouteCopyWith<$Res> get route;

}
/// @nodoc
class _$DeliveryCopyWithImpl<$Res>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._self, this._then);

  final Delivery _self;
  final $Res Function(Delivery) _then;

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restaurantLocation = null,Object? customerLocation = null,Object? route = null,}) {
  return _then(_self.copyWith(
restaurantLocation: null == restaurantLocation ? _self.restaurantLocation : restaurantLocation // ignore: cast_nullable_to_non_nullable
as AddressLocation,customerLocation: null == customerLocation ? _self.customerLocation : customerLocation // ignore: cast_nullable_to_non_nullable
as AddressLocation,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as Route,
  ));
}
/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationCopyWith<$Res> get restaurantLocation {
  
  return $AddressLocationCopyWith<$Res>(_self.restaurantLocation, (value) {
    return _then(_self.copyWith(restaurantLocation: value));
  });
}/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationCopyWith<$Res> get customerLocation {
  
  return $AddressLocationCopyWith<$Res>(_self.customerLocation, (value) {
    return _then(_self.copyWith(customerLocation: value));
  });
}/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteCopyWith<$Res> get route {
  
  return $RouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// Adds pattern-matching-related methods to [Delivery].
extension DeliveryPatterns on Delivery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Delivery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Delivery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Delivery value)  $default,){
final _that = this;
switch (_that) {
case _Delivery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Delivery value)?  $default,){
final _that = this;
switch (_that) {
case _Delivery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressLocation restaurantLocation,  AddressLocation customerLocation,  Route route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Delivery() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressLocation restaurantLocation,  AddressLocation customerLocation,  Route route)  $default,) {final _that = this;
switch (_that) {
case _Delivery():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressLocation restaurantLocation,  AddressLocation customerLocation,  Route route)?  $default,) {final _that = this;
switch (_that) {
case _Delivery() when $default != null:
return $default(_that.restaurantLocation,_that.customerLocation,_that.route);case _:
  return null;

}
}

}

/// @nodoc


class _Delivery implements Delivery {
  const _Delivery({required this.restaurantLocation, required this.customerLocation, required this.route});
  

@override final  AddressLocation restaurantLocation;
@override final  AddressLocation customerLocation;
@override final  Route route;

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryCopyWith<_Delivery> get copyWith => __$DeliveryCopyWithImpl<_Delivery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Delivery&&(identical(other.restaurantLocation, restaurantLocation) || other.restaurantLocation == restaurantLocation)&&(identical(other.customerLocation, customerLocation) || other.customerLocation == customerLocation)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,restaurantLocation,customerLocation,route);

@override
String toString() {
  return 'Delivery(restaurantLocation: $restaurantLocation, customerLocation: $customerLocation, route: $route)';
}


}

/// @nodoc
abstract mixin class _$DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$DeliveryCopyWith(_Delivery value, $Res Function(_Delivery) _then) = __$DeliveryCopyWithImpl;
@override @useResult
$Res call({
 AddressLocation restaurantLocation, AddressLocation customerLocation, Route route
});


@override $AddressLocationCopyWith<$Res> get restaurantLocation;@override $AddressLocationCopyWith<$Res> get customerLocation;@override $RouteCopyWith<$Res> get route;

}
/// @nodoc
class __$DeliveryCopyWithImpl<$Res>
    implements _$DeliveryCopyWith<$Res> {
  __$DeliveryCopyWithImpl(this._self, this._then);

  final _Delivery _self;
  final $Res Function(_Delivery) _then;

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restaurantLocation = null,Object? customerLocation = null,Object? route = null,}) {
  return _then(_Delivery(
restaurantLocation: null == restaurantLocation ? _self.restaurantLocation : restaurantLocation // ignore: cast_nullable_to_non_nullable
as AddressLocation,customerLocation: null == customerLocation ? _self.customerLocation : customerLocation // ignore: cast_nullable_to_non_nullable
as AddressLocation,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as Route,
  ));
}

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationCopyWith<$Res> get restaurantLocation {
  
  return $AddressLocationCopyWith<$Res>(_self.restaurantLocation, (value) {
    return _then(_self.copyWith(restaurantLocation: value));
  });
}/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressLocationCopyWith<$Res> get customerLocation {
  
  return $AddressLocationCopyWith<$Res>(_self.customerLocation, (value) {
    return _then(_self.copyWith(customerLocation: value));
  });
}/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteCopyWith<$Res> get route {
  
  return $RouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}

// dart format on
