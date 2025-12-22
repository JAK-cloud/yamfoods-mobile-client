// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewRequestData {

 int get productId; int get rating; String get comment;
/// Create a copy of ReviewRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewRequestDataCopyWith<ReviewRequestData> get copyWith => _$ReviewRequestDataCopyWithImpl<ReviewRequestData>(this as ReviewRequestData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewRequestData&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,productId,rating,comment);

@override
String toString() {
  return 'ReviewRequestData(productId: $productId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $ReviewRequestDataCopyWith<$Res>  {
  factory $ReviewRequestDataCopyWith(ReviewRequestData value, $Res Function(ReviewRequestData) _then) = _$ReviewRequestDataCopyWithImpl;
@useResult
$Res call({
 int productId, int rating, String comment
});




}
/// @nodoc
class _$ReviewRequestDataCopyWithImpl<$Res>
    implements $ReviewRequestDataCopyWith<$Res> {
  _$ReviewRequestDataCopyWithImpl(this._self, this._then);

  final ReviewRequestData _self;
  final $Res Function(ReviewRequestData) _then;

/// Create a copy of ReviewRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? rating = null,Object? comment = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewRequestData].
extension ReviewRequestDataPatterns on ReviewRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewRequestData value)  $default,){
final _that = this;
switch (_that) {
case _ReviewRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  int rating,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewRequestData() when $default != null:
return $default(_that.productId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  int rating,  String comment)  $default,) {final _that = this;
switch (_that) {
case _ReviewRequestData():
return $default(_that.productId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  int rating,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _ReviewRequestData() when $default != null:
return $default(_that.productId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewRequestData implements ReviewRequestData {
  const _ReviewRequestData({required this.productId, required this.rating, required this.comment});
  

@override final  int productId;
@override final  int rating;
@override final  String comment;

/// Create a copy of ReviewRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewRequestDataCopyWith<_ReviewRequestData> get copyWith => __$ReviewRequestDataCopyWithImpl<_ReviewRequestData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewRequestData&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,productId,rating,comment);

@override
String toString() {
  return 'ReviewRequestData(productId: $productId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$ReviewRequestDataCopyWith<$Res> implements $ReviewRequestDataCopyWith<$Res> {
  factory _$ReviewRequestDataCopyWith(_ReviewRequestData value, $Res Function(_ReviewRequestData) _then) = __$ReviewRequestDataCopyWithImpl;
@override @useResult
$Res call({
 int productId, int rating, String comment
});




}
/// @nodoc
class __$ReviewRequestDataCopyWithImpl<$Res>
    implements _$ReviewRequestDataCopyWith<$Res> {
  __$ReviewRequestDataCopyWithImpl(this._self, this._then);

  final _ReviewRequestData _self;
  final $Res Function(_ReviewRequestData) _then;

/// Create a copy of ReviewRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? rating = null,Object? comment = null,}) {
  return _then(_ReviewRequestData(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
