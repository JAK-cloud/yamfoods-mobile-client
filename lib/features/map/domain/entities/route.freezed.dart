// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Route {

 List<AddressLocation> get polyline;// Direction API's "direction" array
 double get timeTaken;// seconds
 double get totalDistance;
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteCopyWith<Route> get copyWith => _$RouteCopyWithImpl<Route>(this as Route, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Route&&const DeepCollectionEquality().equals(other.polyline, polyline)&&(identical(other.timeTaken, timeTaken) || other.timeTaken == timeTaken)&&(identical(other.totalDistance, totalDistance) || other.totalDistance == totalDistance));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(polyline),timeTaken,totalDistance);

@override
String toString() {
  return 'Route(polyline: $polyline, timeTaken: $timeTaken, totalDistance: $totalDistance)';
}


}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res>  {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) = _$RouteCopyWithImpl;
@useResult
$Res call({
 List<AddressLocation> polyline, double timeTaken, double totalDistance
});




}
/// @nodoc
class _$RouteCopyWithImpl<$Res>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? polyline = null,Object? timeTaken = null,Object? totalDistance = null,}) {
  return _then(_self.copyWith(
polyline: null == polyline ? _self.polyline : polyline // ignore: cast_nullable_to_non_nullable
as List<AddressLocation>,timeTaken: null == timeTaken ? _self.timeTaken : timeTaken // ignore: cast_nullable_to_non_nullable
as double,totalDistance: null == totalDistance ? _self.totalDistance : totalDistance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Route].
extension RoutePatterns on Route {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Route value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Route() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Route value)  $default,){
final _that = this;
switch (_that) {
case _Route():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Route value)?  $default,){
final _that = this;
switch (_that) {
case _Route() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AddressLocation> polyline,  double timeTaken,  double totalDistance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Route() when $default != null:
return $default(_that.polyline,_that.timeTaken,_that.totalDistance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AddressLocation> polyline,  double timeTaken,  double totalDistance)  $default,) {final _that = this;
switch (_that) {
case _Route():
return $default(_that.polyline,_that.timeTaken,_that.totalDistance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AddressLocation> polyline,  double timeTaken,  double totalDistance)?  $default,) {final _that = this;
switch (_that) {
case _Route() when $default != null:
return $default(_that.polyline,_that.timeTaken,_that.totalDistance);case _:
  return null;

}
}

}

/// @nodoc


class _Route implements Route {
  const _Route({required final  List<AddressLocation> polyline, required this.timeTaken, required this.totalDistance}): _polyline = polyline;
  

 final  List<AddressLocation> _polyline;
@override List<AddressLocation> get polyline {
  if (_polyline is EqualUnmodifiableListView) return _polyline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_polyline);
}

// Direction API's "direction" array
@override final  double timeTaken;
// seconds
@override final  double totalDistance;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteCopyWith<_Route> get copyWith => __$RouteCopyWithImpl<_Route>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Route&&const DeepCollectionEquality().equals(other._polyline, _polyline)&&(identical(other.timeTaken, timeTaken) || other.timeTaken == timeTaken)&&(identical(other.totalDistance, totalDistance) || other.totalDistance == totalDistance));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_polyline),timeTaken,totalDistance);

@override
String toString() {
  return 'Route(polyline: $polyline, timeTaken: $timeTaken, totalDistance: $totalDistance)';
}


}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) = __$RouteCopyWithImpl;
@override @useResult
$Res call({
 List<AddressLocation> polyline, double timeTaken, double totalDistance
});




}
/// @nodoc
class __$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? polyline = null,Object? timeTaken = null,Object? totalDistance = null,}) {
  return _then(_Route(
polyline: null == polyline ? _self._polyline : polyline // ignore: cast_nullable_to_non_nullable
as List<AddressLocation>,timeTaken: null == timeTaken ? _self.timeTaken : timeTaken // ignore: cast_nullable_to_non_nullable
as double,totalDistance: null == totalDistance ? _self.totalDistance : totalDistance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
