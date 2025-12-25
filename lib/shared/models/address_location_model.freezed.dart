// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressLocationModel {

@JsonKey(fromJson: parseDouble) double get latitude;@JsonKey(fromJson: parseDouble) double get longitude;
/// Create a copy of AddressLocationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressLocationModelCopyWith<AddressLocationModel> get copyWith => _$AddressLocationModelCopyWithImpl<AddressLocationModel>(this as AddressLocationModel, _$identity);

  /// Serializes this AddressLocationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressLocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'AddressLocationModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $AddressLocationModelCopyWith<$Res>  {
  factory $AddressLocationModelCopyWith(AddressLocationModel value, $Res Function(AddressLocationModel) _then) = _$AddressLocationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: parseDouble) double latitude,@JsonKey(fromJson: parseDouble) double longitude
});




}
/// @nodoc
class _$AddressLocationModelCopyWithImpl<$Res>
    implements $AddressLocationModelCopyWith<$Res> {
  _$AddressLocationModelCopyWithImpl(this._self, this._then);

  final AddressLocationModel _self;
  final $Res Function(AddressLocationModel) _then;

/// Create a copy of AddressLocationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressLocationModel].
extension AddressLocationModelPatterns on AddressLocationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressLocationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressLocationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressLocationModel value)  $default,){
final _that = this;
switch (_that) {
case _AddressLocationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressLocationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddressLocationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: parseDouble)  double latitude, @JsonKey(fromJson: parseDouble)  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressLocationModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: parseDouble)  double latitude, @JsonKey(fromJson: parseDouble)  double longitude)  $default,) {final _that = this;
switch (_that) {
case _AddressLocationModel():
return $default(_that.latitude,_that.longitude);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: parseDouble)  double latitude, @JsonKey(fromJson: parseDouble)  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _AddressLocationModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressLocationModel extends AddressLocationModel {
  const _AddressLocationModel({@JsonKey(fromJson: parseDouble) required this.latitude, @JsonKey(fromJson: parseDouble) required this.longitude}): super._();
  factory _AddressLocationModel.fromJson(Map<String, dynamic> json) => _$AddressLocationModelFromJson(json);

@override@JsonKey(fromJson: parseDouble) final  double latitude;
@override@JsonKey(fromJson: parseDouble) final  double longitude;

/// Create a copy of AddressLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressLocationModelCopyWith<_AddressLocationModel> get copyWith => __$AddressLocationModelCopyWithImpl<_AddressLocationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressLocationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressLocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'AddressLocationModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$AddressLocationModelCopyWith<$Res> implements $AddressLocationModelCopyWith<$Res> {
  factory _$AddressLocationModelCopyWith(_AddressLocationModel value, $Res Function(_AddressLocationModel) _then) = __$AddressLocationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: parseDouble) double latitude,@JsonKey(fromJson: parseDouble) double longitude
});




}
/// @nodoc
class __$AddressLocationModelCopyWithImpl<$Res>
    implements _$AddressLocationModelCopyWith<$Res> {
  __$AddressLocationModelCopyWithImpl(this._self, this._then);

  final _AddressLocationModel _self;
  final $Res Function(_AddressLocationModel) _then;

/// Create a copy of AddressLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_AddressLocationModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
