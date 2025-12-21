// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategories_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubcategoriesResponseModel {

@JsonKey(name: 'subCategories') List<SubcategoryModel> get subCategories;
/// Create a copy of SubcategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcategoriesResponseModelCopyWith<SubcategoriesResponseModel> get copyWith => _$SubcategoriesResponseModelCopyWithImpl<SubcategoriesResponseModel>(this as SubcategoriesResponseModel, _$identity);

  /// Serializes this SubcategoriesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubcategoriesResponseModel&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'SubcategoriesResponseModel(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $SubcategoriesResponseModelCopyWith<$Res>  {
  factory $SubcategoriesResponseModelCopyWith(SubcategoriesResponseModel value, $Res Function(SubcategoriesResponseModel) _then) = _$SubcategoriesResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subCategories') List<SubcategoryModel> subCategories
});




}
/// @nodoc
class _$SubcategoriesResponseModelCopyWithImpl<$Res>
    implements $SubcategoriesResponseModelCopyWith<$Res> {
  _$SubcategoriesResponseModelCopyWithImpl(this._self, this._then);

  final SubcategoriesResponseModel _self;
  final $Res Function(SubcategoriesResponseModel) _then;

/// Create a copy of SubcategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subCategories = null,}) {
  return _then(_self.copyWith(
subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubcategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubcategoriesResponseModel].
extension SubcategoriesResponseModelPatterns on SubcategoriesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubcategoriesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubcategoriesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubcategoriesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SubcategoriesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubcategoriesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubcategoriesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subCategories')  List<SubcategoryModel> subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubcategoriesResponseModel() when $default != null:
return $default(_that.subCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subCategories')  List<SubcategoryModel> subCategories)  $default,) {final _that = this;
switch (_that) {
case _SubcategoriesResponseModel():
return $default(_that.subCategories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subCategories')  List<SubcategoryModel> subCategories)?  $default,) {final _that = this;
switch (_that) {
case _SubcategoriesResponseModel() when $default != null:
return $default(_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubcategoriesResponseModel implements SubcategoriesResponseModel {
  const _SubcategoriesResponseModel({@JsonKey(name: 'subCategories') required final  List<SubcategoryModel> subCategories}): _subCategories = subCategories;
  factory _SubcategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$SubcategoriesResponseModelFromJson(json);

 final  List<SubcategoryModel> _subCategories;
@override@JsonKey(name: 'subCategories') List<SubcategoryModel> get subCategories {
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subCategories);
}


/// Create a copy of SubcategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcategoriesResponseModelCopyWith<_SubcategoriesResponseModel> get copyWith => __$SubcategoriesResponseModelCopyWithImpl<_SubcategoriesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubcategoriesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubcategoriesResponseModel&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'SubcategoriesResponseModel(subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$SubcategoriesResponseModelCopyWith<$Res> implements $SubcategoriesResponseModelCopyWith<$Res> {
  factory _$SubcategoriesResponseModelCopyWith(_SubcategoriesResponseModel value, $Res Function(_SubcategoriesResponseModel) _then) = __$SubcategoriesResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subCategories') List<SubcategoryModel> subCategories
});




}
/// @nodoc
class __$SubcategoriesResponseModelCopyWithImpl<$Res>
    implements _$SubcategoriesResponseModelCopyWith<$Res> {
  __$SubcategoriesResponseModelCopyWithImpl(this._self, this._then);

  final _SubcategoriesResponseModel _self;
  final $Res Function(_SubcategoriesResponseModel) _then;

/// Create a copy of SubcategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategories = null,}) {
  return _then(_SubcategoriesResponseModel(
subCategories: null == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubcategoryModel>,
  ));
}


}

// dart format on
