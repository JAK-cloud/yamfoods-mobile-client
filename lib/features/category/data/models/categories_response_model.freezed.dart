// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoriesResponseModel {

 List<CategoryModel> get categories;
/// Create a copy of CategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesResponseModelCopyWith<CategoriesResponseModel> get copyWith => _$CategoriesResponseModelCopyWithImpl<CategoriesResponseModel>(this as CategoriesResponseModel, _$identity);

  /// Serializes this CategoriesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesResponseModel&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoriesResponseModel(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoriesResponseModelCopyWith<$Res>  {
  factory $CategoriesResponseModelCopyWith(CategoriesResponseModel value, $Res Function(CategoriesResponseModel) _then) = _$CategoriesResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories
});




}
/// @nodoc
class _$CategoriesResponseModelCopyWithImpl<$Res>
    implements $CategoriesResponseModelCopyWith<$Res> {
  _$CategoriesResponseModelCopyWithImpl(this._self, this._then);

  final CategoriesResponseModel _self;
  final $Res Function(CategoriesResponseModel) _then;

/// Create a copy of CategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoriesResponseModel].
extension CategoriesResponseModelPatterns on CategoriesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoriesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoriesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoriesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoriesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoriesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesResponseModel() when $default != null:
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> categories)  $default,) {final _that = this;
switch (_that) {
case _CategoriesResponseModel():
return $default(_that.categories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> categories)?  $default,) {final _that = this;
switch (_that) {
case _CategoriesResponseModel() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoriesResponseModel implements CategoriesResponseModel {
  const _CategoriesResponseModel({required final  List<CategoryModel> categories}): _categories = categories;
  factory _CategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$CategoriesResponseModelFromJson(json);

 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesResponseModelCopyWith<_CategoriesResponseModel> get copyWith => __$CategoriesResponseModelCopyWithImpl<_CategoriesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesResponseModel&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoriesResponseModel(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoriesResponseModelCopyWith<$Res> implements $CategoriesResponseModelCopyWith<$Res> {
  factory _$CategoriesResponseModelCopyWith(_CategoriesResponseModel value, $Res Function(_CategoriesResponseModel) _then) = __$CategoriesResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> categories
});




}
/// @nodoc
class __$CategoriesResponseModelCopyWithImpl<$Res>
    implements _$CategoriesResponseModelCopyWith<$Res> {
  __$CategoriesResponseModelCopyWithImpl(this._self, this._then);

  final _CategoriesResponseModel _self;
  final $Res Function(_CategoriesResponseModel) _then;

/// Create a copy of CategoriesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoriesResponseModel(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

// dart format on
