// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoBannerModel {

 int get id;@JsonKey(name: 'imageUrl') String get imageUrl;// required String title,
// String? subtitle,
// required String status,
// @JsonKey(name: 'startDate') required DateTime startDate,
// @JsonKey(name: 'endDate') required DateTime endDate,
@JsonKey(name: 'productId') int? get productId;
/// Create a copy of PromoBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoBannerModelCopyWith<PromoBannerModel> get copyWith => _$PromoBannerModelCopyWithImpl<PromoBannerModel>(this as PromoBannerModel, _$identity);

  /// Serializes this PromoBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoBannerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productId, productId) || other.productId == productId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,productId);

@override
String toString() {
  return 'PromoBannerModel(id: $id, imageUrl: $imageUrl, productId: $productId)';
}


}

/// @nodoc
abstract mixin class $PromoBannerModelCopyWith<$Res>  {
  factory $PromoBannerModelCopyWith(PromoBannerModel value, $Res Function(PromoBannerModel) _then) = _$PromoBannerModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'imageUrl') String imageUrl,@JsonKey(name: 'productId') int? productId
});




}
/// @nodoc
class _$PromoBannerModelCopyWithImpl<$Res>
    implements $PromoBannerModelCopyWith<$Res> {
  _$PromoBannerModelCopyWithImpl(this._self, this._then);

  final PromoBannerModel _self;
  final $Res Function(PromoBannerModel) _then;

/// Create a copy of PromoBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? productId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoBannerModel].
extension PromoBannerModelPatterns on PromoBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'imageUrl')  String imageUrl, @JsonKey(name: 'productId')  int? productId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoBannerModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.productId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'imageUrl')  String imageUrl, @JsonKey(name: 'productId')  int? productId)  $default,) {final _that = this;
switch (_that) {
case _PromoBannerModel():
return $default(_that.id,_that.imageUrl,_that.productId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'imageUrl')  String imageUrl, @JsonKey(name: 'productId')  int? productId)?  $default,) {final _that = this;
switch (_that) {
case _PromoBannerModel() when $default != null:
return $default(_that.id,_that.imageUrl,_that.productId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoBannerModel implements PromoBannerModel {
  const _PromoBannerModel({required this.id, @JsonKey(name: 'imageUrl') required this.imageUrl, @JsonKey(name: 'productId') this.productId});
  factory _PromoBannerModel.fromJson(Map<String, dynamic> json) => _$PromoBannerModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'imageUrl') final  String imageUrl;
// required String title,
// String? subtitle,
// required String status,
// @JsonKey(name: 'startDate') required DateTime startDate,
// @JsonKey(name: 'endDate') required DateTime endDate,
@override@JsonKey(name: 'productId') final  int? productId;

/// Create a copy of PromoBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoBannerModelCopyWith<_PromoBannerModel> get copyWith => __$PromoBannerModelCopyWithImpl<_PromoBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoBannerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productId, productId) || other.productId == productId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,productId);

@override
String toString() {
  return 'PromoBannerModel(id: $id, imageUrl: $imageUrl, productId: $productId)';
}


}

/// @nodoc
abstract mixin class _$PromoBannerModelCopyWith<$Res> implements $PromoBannerModelCopyWith<$Res> {
  factory _$PromoBannerModelCopyWith(_PromoBannerModel value, $Res Function(_PromoBannerModel) _then) = __$PromoBannerModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'imageUrl') String imageUrl,@JsonKey(name: 'productId') int? productId
});




}
/// @nodoc
class __$PromoBannerModelCopyWithImpl<$Res>
    implements _$PromoBannerModelCopyWith<$Res> {
  __$PromoBannerModelCopyWithImpl(this._self, this._then);

  final _PromoBannerModel _self;
  final $Res Function(_PromoBannerModel) _then;

/// Create a copy of PromoBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? productId = freezed,}) {
  return _then(_PromoBannerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
