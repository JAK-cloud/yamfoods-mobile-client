// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

 int get id; String get name; String get description; String get price; String get discount; String? get variants; String? get nutrition;@JsonKey(name: 'categoryId') int get categoryId;@JsonKey(name: 'subCategoryId') int get subCategoryId;@JsonKey(name: 'vatRate') String get vatRate; int get minimumThreshold;@JsonKey(name: 'createdAt') DateTime get createdAt;@JsonKey(name: 'updatedAt') DateTime get updatedAt; List<ProductImageModel> get imageUrls; List<String> get ingredients;@JsonKey(name: 'branchId') int get branchId; int get quantity;@JsonKey(name: 'averageRating') String get averageRating; int get reviewCount;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.variants, variants) || other.variants == variants)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.minimumThreshold, minimumThreshold) || other.minimumThreshold == minimumThreshold)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,price,discount,variants,nutrition,categoryId,subCategoryId,vatRate,minimumThreshold,createdAt,updatedAt,const DeepCollectionEquality().hash(imageUrls),const DeepCollectionEquality().hash(ingredients),branchId,quantity,averageRating,reviewCount]);

@override
String toString() {
  return 'ProductModel(id: $id, name: $name, description: $description, price: $price, discount: $discount, variants: $variants, nutrition: $nutrition, categoryId: $categoryId, subCategoryId: $subCategoryId, vatRate: $vatRate, minimumThreshold: $minimumThreshold, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, ingredients: $ingredients, branchId: $branchId, quantity: $quantity, averageRating: $averageRating, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String price, String discount, String? variants, String? nutrition,@JsonKey(name: 'categoryId') int categoryId,@JsonKey(name: 'subCategoryId') int subCategoryId,@JsonKey(name: 'vatRate') String vatRate, int minimumThreshold,@JsonKey(name: 'createdAt') DateTime createdAt,@JsonKey(name: 'updatedAt') DateTime updatedAt, List<ProductImageModel> imageUrls, List<String> ingredients,@JsonKey(name: 'branchId') int branchId, int quantity,@JsonKey(name: 'averageRating') String averageRating, int reviewCount
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
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
as List<ProductImageModel>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String price,  String discount,  String? variants,  String? nutrition, @JsonKey(name: 'categoryId')  int categoryId, @JsonKey(name: 'subCategoryId')  int subCategoryId, @JsonKey(name: 'vatRate')  String vatRate,  int minimumThreshold, @JsonKey(name: 'createdAt')  DateTime createdAt, @JsonKey(name: 'updatedAt')  DateTime updatedAt,  List<ProductImageModel> imageUrls,  List<String> ingredients, @JsonKey(name: 'branchId')  int branchId,  int quantity, @JsonKey(name: 'averageRating')  String averageRating,  int reviewCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String price,  String discount,  String? variants,  String? nutrition, @JsonKey(name: 'categoryId')  int categoryId, @JsonKey(name: 'subCategoryId')  int subCategoryId, @JsonKey(name: 'vatRate')  String vatRate,  int minimumThreshold, @JsonKey(name: 'createdAt')  DateTime createdAt, @JsonKey(name: 'updatedAt')  DateTime updatedAt,  List<ProductImageModel> imageUrls,  List<String> ingredients, @JsonKey(name: 'branchId')  int branchId,  int quantity, @JsonKey(name: 'averageRating')  String averageRating,  int reviewCount)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String price,  String discount,  String? variants,  String? nutrition, @JsonKey(name: 'categoryId')  int categoryId, @JsonKey(name: 'subCategoryId')  int subCategoryId, @JsonKey(name: 'vatRate')  String vatRate,  int minimumThreshold, @JsonKey(name: 'createdAt')  DateTime createdAt, @JsonKey(name: 'updatedAt')  DateTime updatedAt,  List<ProductImageModel> imageUrls,  List<String> ingredients, @JsonKey(name: 'branchId')  int branchId,  int quantity, @JsonKey(name: 'averageRating')  String averageRating,  int reviewCount)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.discount,_that.variants,_that.nutrition,_that.categoryId,_that.subCategoryId,_that.vatRate,_that.minimumThreshold,_that.createdAt,_that.updatedAt,_that.imageUrls,_that.ingredients,_that.branchId,_that.quantity,_that.averageRating,_that.reviewCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel implements ProductModel {
  const _ProductModel({required this.id, required this.name, required this.description, required this.price, required this.discount, this.variants, this.nutrition, @JsonKey(name: 'categoryId') required this.categoryId, @JsonKey(name: 'subCategoryId') required this.subCategoryId, @JsonKey(name: 'vatRate') required this.vatRate, required this.minimumThreshold, @JsonKey(name: 'createdAt') required this.createdAt, @JsonKey(name: 'updatedAt') required this.updatedAt, required final  List<ProductImageModel> imageUrls, required final  List<String> ingredients, @JsonKey(name: 'branchId') required this.branchId, required this.quantity, @JsonKey(name: 'averageRating') required this.averageRating, required this.reviewCount}): _imageUrls = imageUrls,_ingredients = ingredients;
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override final  String price;
@override final  String discount;
@override final  String? variants;
@override final  String? nutrition;
@override@JsonKey(name: 'categoryId') final  int categoryId;
@override@JsonKey(name: 'subCategoryId') final  int subCategoryId;
@override@JsonKey(name: 'vatRate') final  String vatRate;
@override final  int minimumThreshold;
@override@JsonKey(name: 'createdAt') final  DateTime createdAt;
@override@JsonKey(name: 'updatedAt') final  DateTime updatedAt;
 final  List<ProductImageModel> _imageUrls;
@override List<ProductImageModel> get imageUrls {
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

@override@JsonKey(name: 'branchId') final  int branchId;
@override final  int quantity;
@override@JsonKey(name: 'averageRating') final  String averageRating;
@override final  int reviewCount;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.variants, variants) || other.variants == variants)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.minimumThreshold, minimumThreshold) || other.minimumThreshold == minimumThreshold)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,price,discount,variants,nutrition,categoryId,subCategoryId,vatRate,minimumThreshold,createdAt,updatedAt,const DeepCollectionEquality().hash(_imageUrls),const DeepCollectionEquality().hash(_ingredients),branchId,quantity,averageRating,reviewCount]);

@override
String toString() {
  return 'ProductModel(id: $id, name: $name, description: $description, price: $price, discount: $discount, variants: $variants, nutrition: $nutrition, categoryId: $categoryId, subCategoryId: $subCategoryId, vatRate: $vatRate, minimumThreshold: $minimumThreshold, createdAt: $createdAt, updatedAt: $updatedAt, imageUrls: $imageUrls, ingredients: $ingredients, branchId: $branchId, quantity: $quantity, averageRating: $averageRating, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String price, String discount, String? variants, String? nutrition,@JsonKey(name: 'categoryId') int categoryId,@JsonKey(name: 'subCategoryId') int subCategoryId,@JsonKey(name: 'vatRate') String vatRate, int minimumThreshold,@JsonKey(name: 'createdAt') DateTime createdAt,@JsonKey(name: 'updatedAt') DateTime updatedAt, List<ProductImageModel> imageUrls, List<String> ingredients,@JsonKey(name: 'branchId') int branchId, int quantity,@JsonKey(name: 'averageRating') String averageRating, int reviewCount
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? discount = null,Object? variants = freezed,Object? nutrition = freezed,Object? categoryId = null,Object? subCategoryId = null,Object? vatRate = null,Object? minimumThreshold = null,Object? createdAt = null,Object? updatedAt = null,Object? imageUrls = null,Object? ingredients = null,Object? branchId = null,Object? quantity = null,Object? averageRating = null,Object? reviewCount = null,}) {
  return _then(_ProductModel(
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
as List<ProductImageModel>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
