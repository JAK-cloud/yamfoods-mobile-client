// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_geocoding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReverseGeocodingModel {

@JsonKey(name: 'results', fromJson: _resultsFromJson) List<String> get formattedAddresses;
/// Create a copy of ReverseGeocodingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReverseGeocodingModelCopyWith<ReverseGeocodingModel> get copyWith => _$ReverseGeocodingModelCopyWithImpl<ReverseGeocodingModel>(this as ReverseGeocodingModel, _$identity);

  /// Serializes this ReverseGeocodingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReverseGeocodingModel&&const DeepCollectionEquality().equals(other.formattedAddresses, formattedAddresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(formattedAddresses));

@override
String toString() {
  return 'ReverseGeocodingModel(formattedAddresses: $formattedAddresses)';
}


}

/// @nodoc
abstract mixin class $ReverseGeocodingModelCopyWith<$Res>  {
  factory $ReverseGeocodingModelCopyWith(ReverseGeocodingModel value, $Res Function(ReverseGeocodingModel) _then) = _$ReverseGeocodingModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'results', fromJson: _resultsFromJson) List<String> formattedAddresses
});




}
/// @nodoc
class _$ReverseGeocodingModelCopyWithImpl<$Res>
    implements $ReverseGeocodingModelCopyWith<$Res> {
  _$ReverseGeocodingModelCopyWithImpl(this._self, this._then);

  final ReverseGeocodingModel _self;
  final $Res Function(ReverseGeocodingModel) _then;

/// Create a copy of ReverseGeocodingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formattedAddresses = null,}) {
  return _then(_self.copyWith(
formattedAddresses: null == formattedAddresses ? _self.formattedAddresses : formattedAddresses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReverseGeocodingModel].
extension ReverseGeocodingModelPatterns on ReverseGeocodingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReverseGeocodingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReverseGeocodingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReverseGeocodingModel value)  $default,){
final _that = this;
switch (_that) {
case _ReverseGeocodingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReverseGeocodingModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReverseGeocodingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'results', fromJson: _resultsFromJson)  List<String> formattedAddresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReverseGeocodingModel() when $default != null:
return $default(_that.formattedAddresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'results', fromJson: _resultsFromJson)  List<String> formattedAddresses)  $default,) {final _that = this;
switch (_that) {
case _ReverseGeocodingModel():
return $default(_that.formattedAddresses);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'results', fromJson: _resultsFromJson)  List<String> formattedAddresses)?  $default,) {final _that = this;
switch (_that) {
case _ReverseGeocodingModel() when $default != null:
return $default(_that.formattedAddresses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReverseGeocodingModel implements ReverseGeocodingModel {
  const _ReverseGeocodingModel({@JsonKey(name: 'results', fromJson: _resultsFromJson) required final  List<String> formattedAddresses}): _formattedAddresses = formattedAddresses;
  factory _ReverseGeocodingModel.fromJson(Map<String, dynamic> json) => _$ReverseGeocodingModelFromJson(json);

 final  List<String> _formattedAddresses;
@override@JsonKey(name: 'results', fromJson: _resultsFromJson) List<String> get formattedAddresses {
  if (_formattedAddresses is EqualUnmodifiableListView) return _formattedAddresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_formattedAddresses);
}


/// Create a copy of ReverseGeocodingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReverseGeocodingModelCopyWith<_ReverseGeocodingModel> get copyWith => __$ReverseGeocodingModelCopyWithImpl<_ReverseGeocodingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReverseGeocodingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReverseGeocodingModel&&const DeepCollectionEquality().equals(other._formattedAddresses, _formattedAddresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_formattedAddresses));

@override
String toString() {
  return 'ReverseGeocodingModel(formattedAddresses: $formattedAddresses)';
}


}

/// @nodoc
abstract mixin class _$ReverseGeocodingModelCopyWith<$Res> implements $ReverseGeocodingModelCopyWith<$Res> {
  factory _$ReverseGeocodingModelCopyWith(_ReverseGeocodingModel value, $Res Function(_ReverseGeocodingModel) _then) = __$ReverseGeocodingModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'results', fromJson: _resultsFromJson) List<String> formattedAddresses
});




}
/// @nodoc
class __$ReverseGeocodingModelCopyWithImpl<$Res>
    implements _$ReverseGeocodingModelCopyWith<$Res> {
  __$ReverseGeocodingModelCopyWithImpl(this._self, this._then);

  final _ReverseGeocodingModel _self;
  final $Res Function(_ReverseGeocodingModel) _then;

/// Create a copy of ReverseGeocodingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formattedAddresses = null,}) {
  return _then(_ReverseGeocodingModel(
formattedAddresses: null == formattedAddresses ? _self._formattedAddresses : formattedAddresses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
