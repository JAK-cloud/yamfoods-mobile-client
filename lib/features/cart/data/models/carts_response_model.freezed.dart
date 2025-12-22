// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carts_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartsResponseModel {

 List<CartModel> get carts;
/// Create a copy of CartsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartsResponseModelCopyWith<CartsResponseModel> get copyWith => _$CartsResponseModelCopyWithImpl<CartsResponseModel>(this as CartsResponseModel, _$identity);

  /// Serializes this CartsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsResponseModel&&const DeepCollectionEquality().equals(other.carts, carts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(carts));

@override
String toString() {
  return 'CartsResponseModel(carts: $carts)';
}


}

/// @nodoc
abstract mixin class $CartsResponseModelCopyWith<$Res>  {
  factory $CartsResponseModelCopyWith(CartsResponseModel value, $Res Function(CartsResponseModel) _then) = _$CartsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CartModel> carts
});




}
/// @nodoc
class _$CartsResponseModelCopyWithImpl<$Res>
    implements $CartsResponseModelCopyWith<$Res> {
  _$CartsResponseModelCopyWithImpl(this._self, this._then);

  final CartsResponseModel _self;
  final $Res Function(CartsResponseModel) _then;

/// Create a copy of CartsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? carts = null,}) {
  return _then(_self.copyWith(
carts: null == carts ? _self.carts : carts // ignore: cast_nullable_to_non_nullable
as List<CartModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartsResponseModel].
extension CartsResponseModelPatterns on CartsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CartsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartModel> carts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartsResponseModel() when $default != null:
return $default(_that.carts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartModel> carts)  $default,) {final _that = this;
switch (_that) {
case _CartsResponseModel():
return $default(_that.carts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartModel> carts)?  $default,) {final _that = this;
switch (_that) {
case _CartsResponseModel() when $default != null:
return $default(_that.carts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartsResponseModel implements CartsResponseModel {
  const _CartsResponseModel({required final  List<CartModel> carts}): _carts = carts;
  factory _CartsResponseModel.fromJson(Map<String, dynamic> json) => _$CartsResponseModelFromJson(json);

 final  List<CartModel> _carts;
@override List<CartModel> get carts {
  if (_carts is EqualUnmodifiableListView) return _carts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_carts);
}


/// Create a copy of CartsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartsResponseModelCopyWith<_CartsResponseModel> get copyWith => __$CartsResponseModelCopyWithImpl<_CartsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartsResponseModel&&const DeepCollectionEquality().equals(other._carts, _carts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_carts));

@override
String toString() {
  return 'CartsResponseModel(carts: $carts)';
}


}

/// @nodoc
abstract mixin class _$CartsResponseModelCopyWith<$Res> implements $CartsResponseModelCopyWith<$Res> {
  factory _$CartsResponseModelCopyWith(_CartsResponseModel value, $Res Function(_CartsResponseModel) _then) = __$CartsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CartModel> carts
});




}
/// @nodoc
class __$CartsResponseModelCopyWithImpl<$Res>
    implements _$CartsResponseModelCopyWith<$Res> {
  __$CartsResponseModelCopyWithImpl(this._self, this._then);

  final _CartsResponseModel _self;
  final $Res Function(_CartsResponseModel) _then;

/// Create a copy of CartsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? carts = null,}) {
  return _then(_CartsResponseModel(
carts: null == carts ? _self._carts : carts // ignore: cast_nullable_to_non_nullable
as List<CartModel>,
  ));
}


}

// dart format on
