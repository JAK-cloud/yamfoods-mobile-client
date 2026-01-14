// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_filter_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductFilterRequestModel {

/// Search products by name (case-insensitive)
 String? get search;/// Minimum price filter
 double? get minPrice;/// Maximum price filter
 double? get maxPrice;/// Filter by single category ID
 int? get category;/// Filter by single subcategory ID
 int? get subcategory;/// Filter by ingredients (comma-separated string)
/// Example: "cheese,tomato"
 String? get ingredients;/// Filter products with discount > 0
 bool? get hasDiscount;
/// Create a copy of ProductFilterRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterRequestModelCopyWith<ProductFilterRequestModel> get copyWith => _$ProductFilterRequestModelCopyWithImpl<ProductFilterRequestModel>(this as ProductFilterRequestModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterRequestModel&&(identical(other.search, search) || other.search == search)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.hasDiscount, hasDiscount) || other.hasDiscount == hasDiscount));
}


@override
int get hashCode => Object.hash(runtimeType,search,minPrice,maxPrice,category,subcategory,ingredients,hasDiscount);

@override
String toString() {
  return 'ProductFilterRequestModel(search: $search, minPrice: $minPrice, maxPrice: $maxPrice, category: $category, subcategory: $subcategory, ingredients: $ingredients, hasDiscount: $hasDiscount)';
}


}

/// @nodoc
abstract mixin class $ProductFilterRequestModelCopyWith<$Res>  {
  factory $ProductFilterRequestModelCopyWith(ProductFilterRequestModel value, $Res Function(ProductFilterRequestModel) _then) = _$ProductFilterRequestModelCopyWithImpl;
@useResult
$Res call({
 String? search, double? minPrice, double? maxPrice, int? category, int? subcategory, String? ingredients, bool? hasDiscount
});




}
/// @nodoc
class _$ProductFilterRequestModelCopyWithImpl<$Res>
    implements $ProductFilterRequestModelCopyWith<$Res> {
  _$ProductFilterRequestModelCopyWithImpl(this._self, this._then);

  final ProductFilterRequestModel _self;
  final $Res Function(ProductFilterRequestModel) _then;

/// Create a copy of ProductFilterRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? search = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? category = freezed,Object? subcategory = freezed,Object? ingredients = freezed,Object? hasDiscount = freezed,}) {
  return _then(_self.copyWith(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as int?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,hasDiscount: freezed == hasDiscount ? _self.hasDiscount : hasDiscount // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterRequestModel].
extension ProductFilterRequestModelPatterns on ProductFilterRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? search,  double? minPrice,  double? maxPrice,  int? category,  int? subcategory,  String? ingredients,  bool? hasDiscount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterRequestModel() when $default != null:
return $default(_that.search,_that.minPrice,_that.maxPrice,_that.category,_that.subcategory,_that.ingredients,_that.hasDiscount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? search,  double? minPrice,  double? maxPrice,  int? category,  int? subcategory,  String? ingredients,  bool? hasDiscount)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterRequestModel():
return $default(_that.search,_that.minPrice,_that.maxPrice,_that.category,_that.subcategory,_that.ingredients,_that.hasDiscount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? search,  double? minPrice,  double? maxPrice,  int? category,  int? subcategory,  String? ingredients,  bool? hasDiscount)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterRequestModel() when $default != null:
return $default(_that.search,_that.minPrice,_that.maxPrice,_that.category,_that.subcategory,_that.ingredients,_that.hasDiscount);case _:
  return null;

}
}

}

/// @nodoc


class _ProductFilterRequestModel extends ProductFilterRequestModel {
  const _ProductFilterRequestModel({this.search, this.minPrice, this.maxPrice, this.category, this.subcategory, this.ingredients, this.hasDiscount}): super._();
  

/// Search products by name (case-insensitive)
@override final  String? search;
/// Minimum price filter
@override final  double? minPrice;
/// Maximum price filter
@override final  double? maxPrice;
/// Filter by single category ID
@override final  int? category;
/// Filter by single subcategory ID
@override final  int? subcategory;
/// Filter by ingredients (comma-separated string)
/// Example: "cheese,tomato"
@override final  String? ingredients;
/// Filter products with discount > 0
@override final  bool? hasDiscount;

/// Create a copy of ProductFilterRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterRequestModelCopyWith<_ProductFilterRequestModel> get copyWith => __$ProductFilterRequestModelCopyWithImpl<_ProductFilterRequestModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterRequestModel&&(identical(other.search, search) || other.search == search)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.hasDiscount, hasDiscount) || other.hasDiscount == hasDiscount));
}


@override
int get hashCode => Object.hash(runtimeType,search,minPrice,maxPrice,category,subcategory,ingredients,hasDiscount);

@override
String toString() {
  return 'ProductFilterRequestModel(search: $search, minPrice: $minPrice, maxPrice: $maxPrice, category: $category, subcategory: $subcategory, ingredients: $ingredients, hasDiscount: $hasDiscount)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterRequestModelCopyWith<$Res> implements $ProductFilterRequestModelCopyWith<$Res> {
  factory _$ProductFilterRequestModelCopyWith(_ProductFilterRequestModel value, $Res Function(_ProductFilterRequestModel) _then) = __$ProductFilterRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String? search, double? minPrice, double? maxPrice, int? category, int? subcategory, String? ingredients, bool? hasDiscount
});




}
/// @nodoc
class __$ProductFilterRequestModelCopyWithImpl<$Res>
    implements _$ProductFilterRequestModelCopyWith<$Res> {
  __$ProductFilterRequestModelCopyWithImpl(this._self, this._then);

  final _ProductFilterRequestModel _self;
  final $Res Function(_ProductFilterRequestModel) _then;

/// Create a copy of ProductFilterRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? search = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? category = freezed,Object? subcategory = freezed,Object? ingredients = freezed,Object? hasDiscount = freezed,}) {
  return _then(_ProductFilterRequestModel(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as int?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,hasDiscount: freezed == hasDiscount ? _self.hasDiscount : hasDiscount // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
