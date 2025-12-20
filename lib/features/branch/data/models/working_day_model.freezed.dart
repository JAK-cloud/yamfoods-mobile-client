// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkingDayModel {

 String get label; bool get value;
/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingDayModelCopyWith<WorkingDayModel> get copyWith => _$WorkingDayModelCopyWithImpl<WorkingDayModel>(this as WorkingDayModel, _$identity);

  /// Serializes this WorkingDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingDayModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'WorkingDayModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $WorkingDayModelCopyWith<$Res>  {
  factory $WorkingDayModelCopyWith(WorkingDayModel value, $Res Function(WorkingDayModel) _then) = _$WorkingDayModelCopyWithImpl;
@useResult
$Res call({
 String label, bool value
});




}
/// @nodoc
class _$WorkingDayModelCopyWithImpl<$Res>
    implements $WorkingDayModelCopyWith<$Res> {
  _$WorkingDayModelCopyWithImpl(this._self, this._then);

  final WorkingDayModel _self;
  final $Res Function(WorkingDayModel) _then;

/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingDayModel].
extension WorkingDayModelPatterns on WorkingDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingDayModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkingDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingDayModel() when $default != null:
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
case _WorkingDayModel() when $default != null:
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
case _WorkingDayModel():
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
case _WorkingDayModel() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingDayModel implements WorkingDayModel {
  const _WorkingDayModel({required this.label, required this.value});
  factory _WorkingDayModel.fromJson(Map<String, dynamic> json) => _$WorkingDayModelFromJson(json);

@override final  String label;
@override final  bool value;

/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingDayModelCopyWith<_WorkingDayModel> get copyWith => __$WorkingDayModelCopyWithImpl<_WorkingDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingDayModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'WorkingDayModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$WorkingDayModelCopyWith<$Res> implements $WorkingDayModelCopyWith<$Res> {
  factory _$WorkingDayModelCopyWith(_WorkingDayModel value, $Res Function(_WorkingDayModel) _then) = __$WorkingDayModelCopyWithImpl;
@override @useResult
$Res call({
 String label, bool value
});




}
/// @nodoc
class __$WorkingDayModelCopyWithImpl<$Res>
    implements _$WorkingDayModelCopyWith<$Res> {
  __$WorkingDayModelCopyWithImpl(this._self, this._then);

  final _WorkingDayModel _self;
  final $Res Function(_WorkingDayModel) _then;

/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_WorkingDayModel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
