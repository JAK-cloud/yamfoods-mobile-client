// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Product {

 int get id; String get name; String get description; String get price; String get discount; String? get variants; String? get nutrition; int get categoryId; int get subCategoryId; String get vatRate; int get minimumThreshold; DateTime get createdAt; DateTime get updatedAt; List<ProductImage> get imageUrls; List<String> get ingredients; int get branchId; int get quantity; String get averageRating; int get reviewCount;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.variants, variants) || other.variants == variants)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.minimumThreshold, minimumThreshold) || other.minimumThreshold == minimumThreshold)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,price,discount,variants,nutrition,categoryId,subCategoryId,vatRate,minimumThreshold,createdAt,updatedAt,const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(ingredients),branchId,quantity,averageRating,reviewCount]);

@override
String toString() {
  return 'Product(id: $id, name: $name, description: $description, price: $price, discount: $discount, variants: $variants, nutrition: $nutrition, categoryId: $categoryId, subCategoryId: $subCategoryId, vatRate: $vatRate, minimumThreshold: $minimumThreshold, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, ingredients: $ingredients, branchId: $branchId, quantity: $quantity, averageRating: $averageRating, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String price, String discount, String? variants, String? nutrition, int categoryId, int subCategoryId, String vatRate, int minimumThreshold, DateTime createdAt, DateTime updatedAt, List<ProductImage> imageUrls, List<String> ingredients, int branchId, int quantity, String averageRating, int reviewCount
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? discount = null,Object? variants = freezed,Object? nutrition = freezed,Object? categoryId = null,Object? subCategoryId = null,Object? vatRate = null,Object? minimumThreshold = null,Object? createdAt = null,Object? updatedAt = null,Object? imageUrls = null,Object? ingredients = null,Object? branchId = null,Object? quantity = null,Object? averageRating = null,Object? reviewCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,variants: freezed == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as String?,nutrition: freezed == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,vatRate: null == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as String,minimumThreshold: null == minimumThreshold ? _self.minimumThreshold : minimumThreshold // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<ProductImage>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String price,  String discount,  String? variants,  String? nutrition,  int categoryId,  int subCategoryId,  String vatRate,  int minimumThreshold,  DateTime createdAt,  DateTime updatedAt,  List<ProductImage> imageUrls,  List<String> ingredients,  int branchId,  int quantity,  String averageRating,  int reviewCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.discount,_that.variants,_that.nutrition,_that.categoryId,_that.subCategoryId,_that.vatRate,_that.minimumThreshold,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.ingredients,_that.branchId,_that.quantity,_that.averageRating,_that.reviewCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String price,  String discount,  String? variants,  String? nutrition,  int categoryId,  int subCategoryId,  String vatRate,  int minimumThreshold,  DateTime createdAt,  DateTime updatedAt,  List<ProductImage> imageUrls,  List<String> ingredients,  int branchId,  int quantity,  String averageRating,  int reviewCount)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.description,_that.price,_that.discount,_that.variants,_that.nutrition,_that.categoryId,_that.subCategoryId,_that.vatRate,_that.minimumThreshold,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.ingredients,_that.branchId,_that.quantity,_that.averageRating,_that.reviewCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String price,  String discount,  String? variants,  String? nutrition,  int categoryId,  int subCategoryId,  String vatRate,  int minimumThreshold,  DateTime createdAt,  DateTime updatedAt,  List<ProductImage> imageUrls,  List<String> ingredients,  int branchId,  int quantity,  String averageRating,  int reviewCount)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.discount,_that.variants,_that.nutrition,_that.categoryId,_that.subCategoryId,_that.vatRate,_that.minimumThreshold,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.ingredients,_that.branchId,_that.quantity,_that.averageRating,_that.reviewCount);case _:
  return null;

}
}

}

/// @nodoc


class _Product implements Product {
  const _Product({required this.id, required this.name, required this.description, required this.price, required this.discount, this.variants, this.nutrition, required this.categoryId, required this.subCategoryId, required this.vatRate, required this.minimumThreshold, required this.createdAt, required this.updatedAt, required final  List<ProductImage> imageUrls, required final  List<String> ingredients, required this.branchId, required this.quantity, required this.averageRating, required this.reviewCount}): _imageUrls = imageUrls,_ingredients = ingredients;
  

@override final  int id;
@override final  String name;
@override final  String description;
@override final  String price;
@override final  String discount;
@override final  String? variants;
@override final  String? nutrition;
@override final  int categoryId;
@override final  int subCategoryId;
@override final  String vatRate;
@override final  int minimumThreshold;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
 final  List<ProductImage> _imageUrls;
@override List<ProductImage> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

 final  List<String> _ingredients;
@override List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override final  int branchId;
@override final  int quantity;
@override final  String averageRating;
@override final  int reviewCount;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.variants, variants) || other.variants == variants)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.minimumThreshold, minimumThreshold) || other.minimumThreshold == minimumThreshold)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,price,discount,variants,nutrition,categoryId,subCategoryId,vatRate,minimumThreshold,createdAt,updatedAt,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_ingredients),branchId,quantity,averageRating,reviewCount]);

@override
String toString() {
  return 'Product(id: $id, name: $name, description: $description, price: $price, discount: $discount, variants: $variants, nutrition: $nutrition, categoryId: $categoryId, subCategoryId: $subCategoryId, vatRate: $vatRate, minimumThreshold: $minimumThreshold, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, ingredients: $ingredients, branchId: $branchId, quantity: $quantity, averageRating: $averageRating, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String price, String discount, String? variants, String? nutrition, int categoryId, int subCategoryId, String vatRate, int minimumThreshold, DateTime createdAt, DateTime updatedAt, List<ProductImage> imageUrls, List<String> ingredients, int branchId, int quantity, String averageRating, int reviewCount
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? discount = null,Object? variants = freezed,Object? nutrition = freezed,Object? categoryId = null,Object? subCategoryId = null,Object? vatRate = null,Object? minimumThreshold = null,Object? createdAt = null,Object? updatedAt = null,Object? imageUrls = null,Object? ingredients = null,Object? branchId = null,Object? quantity = null,Object? averageRating = null,Object? reviewCount = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,variants: freezed == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as String?,nutrition: freezed == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,vatRate: null == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as String,minimumThreshold: null == minimumThreshold ? _self.minimumThreshold : minimumThreshold // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<ProductImage>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
