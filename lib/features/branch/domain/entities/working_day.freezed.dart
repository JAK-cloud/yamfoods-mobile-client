// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkingDay {

 String get label; bool get value;
/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingDayCopyWith<WorkingDay> get copyWith => _$WorkingDayCopyWithImpl<WorkingDay>(this as WorkingDay, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingDay&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'WorkingDay(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $WorkingDayCopyWith<$Res>  {
  factory $WorkingDayCopyWith(WorkingDay value, $Res Function(WorkingDay) _then) = _$WorkingDayCopyWithImpl;
@useResult
$Res call({
 String label, bool value
});




}
/// @nodoc
class _$WorkingDayCopyWithImpl<$Res>
    implements $WorkingDayCopyWith<$Res> {
  _$WorkingDayCopyWithImpl(this._self, this._then);

  final WorkingDay _self;
  final $Res Function(WorkingDay) _then;

/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingDay].
extension WorkingDayPatterns on WorkingDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingDay value)  $default,){
final _that = this;
switch (_that) {
case _WorkingDay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingDay value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  bool value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  bool value)  $default,) {final _that = this;
switch (_that) {
case _WorkingDay():
return $default(_that.label,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  bool value)?  $default,) {final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _WorkingDay implements WorkingDay {
  const _WorkingDay({required this.label, required this.value});
  

@override final  String label;
@override final  bool value;

/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingDayCopyWith<_WorkingDay> get copyWith => __$WorkingDayCopyWithImpl<_WorkingDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingDay&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'WorkingDay(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$WorkingDayCopyWith<$Res> implements $WorkingDayCopyWith<$Res> {
  factory _$WorkingDayCopyWith(_WorkingDay value, $Res Function(_WorkingDay) _then) = __$WorkingDayCopyWithImpl;
@override @useResult
$Res call({
 String label, bool value
});




}
/// @nodoc
class __$WorkingDayCopyWithImpl<$Res>
    implements _$WorkingDayCopyWith<$Res> {
  __$WorkingDayCopyWithImpl(this._self, this._then);

  final _WorkingDay _self;
  final $Res Function(_WorkingDay) _then;

/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_WorkingDay(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
