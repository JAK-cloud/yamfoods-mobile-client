// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AchievementPoint {

 int get point;
/// Create a copy of AchievementPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementPointCopyWith<AchievementPoint> get copyWith => _$AchievementPointCopyWithImpl<AchievementPoint>(this as AchievementPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementPoint&&(identical(other.point, point) || other.point == point));
}


@override
int get hashCode => Object.hash(runtimeType,point);

@override
String toString() {
  return 'AchievementPoint(point: $point)';
}


}

/// @nodoc
abstract mixin class $AchievementPointCopyWith<$Res>  {
  factory $AchievementPointCopyWith(AchievementPoint value, $Res Function(AchievementPoint) _then) = _$AchievementPointCopyWithImpl;
@useResult
$Res call({
 int point
});




}
/// @nodoc
class _$AchievementPointCopyWithImpl<$Res>
    implements $AchievementPointCopyWith<$Res> {
  _$AchievementPointCopyWithImpl(this._self, this._then);

  final AchievementPoint _self;
  final $Res Function(AchievementPoint) _then;

/// Create a copy of AchievementPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? point = null,}) {
  return _then(_self.copyWith(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementPoint].
extension AchievementPointPatterns on AchievementPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementPoint value)  $default,){
final _that = this;
switch (_that) {
case _AchievementPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementPoint value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int point)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AchievementPoint() when $default != null:
return $default(_that.point);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int point)  $default,) {final _that = this;
switch (_that) {
case _AchievementPoint():
return $default(_that.point);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int point)?  $default,) {final _that = this;
switch (_that) {
case _AchievementPoint() when $default != null:
return $default(_that.point);case _:
  return null;

}
}

}

/// @nodoc


class _AchievementPoint implements AchievementPoint {
  const _AchievementPoint({required this.point});
  

@override final  int point;

/// Create a copy of AchievementPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementPointCopyWith<_AchievementPoint> get copyWith => __$AchievementPointCopyWithImpl<_AchievementPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementPoint&&(identical(other.point, point) || other.point == point));
}


@override
int get hashCode => Object.hash(runtimeType,point);

@override
String toString() {
  return 'AchievementPoint(point: $point)';
}


}

/// @nodoc
abstract mixin class _$AchievementPointCopyWith<$Res> implements $AchievementPointCopyWith<$Res> {
  factory _$AchievementPointCopyWith(_AchievementPoint value, $Res Function(_AchievementPoint) _then) = __$AchievementPointCopyWithImpl;
@override @useResult
$Res call({
 int point
});




}
/// @nodoc
class __$AchievementPointCopyWithImpl<$Res>
    implements _$AchievementPointCopyWith<$Res> {
  __$AchievementPointCopyWithImpl(this._self, this._then);

  final _AchievementPoint _self;
  final $Res Function(_AchievementPoint) _then;

/// Create a copy of AchievementPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? point = null,}) {
  return _then(_AchievementPoint(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
