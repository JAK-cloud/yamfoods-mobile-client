// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AchievementPointModel {

 int get point;
/// Create a copy of AchievementPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementPointModelCopyWith<AchievementPointModel> get copyWith => _$AchievementPointModelCopyWithImpl<AchievementPointModel>(this as AchievementPointModel, _$identity);

  /// Serializes this AchievementPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementPointModel&&(identical(other.point, point) || other.point == point));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,point);

@override
String toString() {
  return 'AchievementPointModel(point: $point)';
}


}

/// @nodoc
abstract mixin class $AchievementPointModelCopyWith<$Res>  {
  factory $AchievementPointModelCopyWith(AchievementPointModel value, $Res Function(AchievementPointModel) _then) = _$AchievementPointModelCopyWithImpl;
@useResult
$Res call({
 int point
});




}
/// @nodoc
class _$AchievementPointModelCopyWithImpl<$Res>
    implements $AchievementPointModelCopyWith<$Res> {
  _$AchievementPointModelCopyWithImpl(this._self, this._then);

  final AchievementPointModel _self;
  final $Res Function(AchievementPointModel) _then;

/// Create a copy of AchievementPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? point = null,}) {
  return _then(_self.copyWith(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementPointModel].
extension AchievementPointModelPatterns on AchievementPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementPointModel value)  $default,){
final _that = this;
switch (_that) {
case _AchievementPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementPointModel() when $default != null:
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
case _AchievementPointModel() when $default != null:
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
case _AchievementPointModel():
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
case _AchievementPointModel() when $default != null:
return $default(_that.point);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AchievementPointModel implements AchievementPointModel {
  const _AchievementPointModel({required this.point});
  factory _AchievementPointModel.fromJson(Map<String, dynamic> json) => _$AchievementPointModelFromJson(json);

@override final  int point;

/// Create a copy of AchievementPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementPointModelCopyWith<_AchievementPointModel> get copyWith => __$AchievementPointModelCopyWithImpl<_AchievementPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AchievementPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementPointModel&&(identical(other.point, point) || other.point == point));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,point);

@override
String toString() {
  return 'AchievementPointModel(point: $point)';
}


}

/// @nodoc
abstract mixin class _$AchievementPointModelCopyWith<$Res> implements $AchievementPointModelCopyWith<$Res> {
  factory _$AchievementPointModelCopyWith(_AchievementPointModel value, $Res Function(_AchievementPointModel) _then) = __$AchievementPointModelCopyWithImpl;
@override @useResult
$Res call({
 int point
});




}
/// @nodoc
class __$AchievementPointModelCopyWithImpl<$Res>
    implements _$AchievementPointModelCopyWith<$Res> {
  __$AchievementPointModelCopyWithImpl(this._self, this._then);

  final _AchievementPointModel _self;
  final $Res Function(_AchievementPointModel) _then;

/// Create a copy of AchievementPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? point = null,}) {
  return _then(_AchievementPointModel(
point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
