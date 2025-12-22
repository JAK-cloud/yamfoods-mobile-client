// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoCodeModel {

 int get id; String get code; String get discount;@JsonKey(name: 'minOrderAmount') String get minOrderAmount;@JsonKey(name: 'startDate') DateTime get startDate;@JsonKey(name: 'endDate') DateTime get endDate;@JsonKey(name: 'createdAt') DateTime get createdAt;@JsonKey(name: 'updatedAt') DateTime get updatedAt;
/// Create a copy of PromoCodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoCodeModelCopyWith<PromoCodeModel> get copyWith => _$PromoCodeModelCopyWithImpl<PromoCodeModel>(this as PromoCodeModel, _$identity);

  /// Serializes this PromoCodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoCodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,discount,minOrderAmount,startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'PromoCodeModel(id: $id, code: $code, discount: $discount, minOrderAmount: $minOrderAmount, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PromoCodeModelCopyWith<$Res>  {
  factory $PromoCodeModelCopyWith(PromoCodeModel value, $Res Function(PromoCodeModel) _then) = _$PromoCodeModelCopyWithImpl;
@useResult
$Res call({
 int id, String code, String discount,@JsonKey(name: 'minOrderAmount') String minOrderAmount,@JsonKey(name: 'startDate') DateTime startDate,@JsonKey(name: 'endDate') DateTime endDate,@JsonKey(name: 'createdAt') DateTime createdAt,@JsonKey(name: 'updatedAt') DateTime updatedAt
});




}
/// @nodoc
class _$PromoCodeModelCopyWithImpl<$Res>
    implements $PromoCodeModelCopyWith<$Res> {
  _$PromoCodeModelCopyWithImpl(this._self, this._then);

  final PromoCodeModel _self;
  final $Res Function(PromoCodeModel) _then;

/// Create a copy of PromoCodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? discount = null,Object? minOrderAmount = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoCodeModel].
extension PromoCodeModelPatterns on PromoCodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoCodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoCodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoCodeModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoCodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoCodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoCodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String discount, @JsonKey(name: 'minOrderAmount')  String minOrderAmount, @JsonKey(name: 'startDate')  DateTime startDate, @JsonKey(name: 'endDate')  DateTime endDate, @JsonKey(name: 'createdAt')  DateTime createdAt, @JsonKey(name: 'updatedAt')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoCodeModel() when $default != null:
return $default(_that.id,_that.code,_that.discount,_that.minOrderAmount,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String discount, @JsonKey(name: 'minOrderAmount')  String minOrderAmount, @JsonKey(name: 'startDate')  DateTime startDate, @JsonKey(name: 'endDate')  DateTime endDate, @JsonKey(name: 'createdAt')  DateTime createdAt, @JsonKey(name: 'updatedAt')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PromoCodeModel():
return $default(_that.id,_that.code,_that.discount,_that.minOrderAmount,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String discount, @JsonKey(name: 'minOrderAmount')  String minOrderAmount, @JsonKey(name: 'startDate')  DateTime startDate, @JsonKey(name: 'endDate')  DateTime endDate, @JsonKey(name: 'createdAt')  DateTime createdAt, @JsonKey(name: 'updatedAt')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PromoCodeModel() when $default != null:
return $default(_that.id,_that.code,_that.discount,_that.minOrderAmount,_that.startDate,_that.endDate,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoCodeModel implements PromoCodeModel {
  const _PromoCodeModel({required this.id, required this.code, required this.discount, @JsonKey(name: 'minOrderAmount') required this.minOrderAmount, @JsonKey(name: 'startDate') required this.startDate, @JsonKey(name: 'endDate') required this.endDate, @JsonKey(name: 'createdAt') required this.createdAt, @JsonKey(name: 'updatedAt') required this.updatedAt});
  factory _PromoCodeModel.fromJson(Map<String, dynamic> json) => _$PromoCodeModelFromJson(json);

@override final  int id;
@override final  String code;
@override final  String discount;
@override@JsonKey(name: 'minOrderAmount') final  String minOrderAmount;
@override@JsonKey(name: 'startDate') final  DateTime startDate;
@override@JsonKey(name: 'endDate') final  DateTime endDate;
@override@JsonKey(name: 'createdAt') final  DateTime createdAt;
@override@JsonKey(name: 'updatedAt') final  DateTime updatedAt;

/// Create a copy of PromoCodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoCodeModelCopyWith<_PromoCodeModel> get copyWith => __$PromoCodeModelCopyWithImpl<_PromoCodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoCodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoCodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,discount,minOrderAmount,startDate,endDate,createdAt,updatedAt);

@override
String toString() {
  return 'PromoCodeModel(id: $id, code: $code, discount: $discount, minOrderAmount: $minOrderAmount, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PromoCodeModelCopyWith<$Res> implements $PromoCodeModelCopyWith<$Res> {
  factory _$PromoCodeModelCopyWith(_PromoCodeModel value, $Res Function(_PromoCodeModel) _then) = __$PromoCodeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String discount,@JsonKey(name: 'minOrderAmount') String minOrderAmount,@JsonKey(name: 'startDate') DateTime startDate,@JsonKey(name: 'endDate') DateTime endDate,@JsonKey(name: 'createdAt') DateTime createdAt,@JsonKey(name: 'updatedAt') DateTime updatedAt
});




}
/// @nodoc
class __$PromoCodeModelCopyWithImpl<$Res>
    implements _$PromoCodeModelCopyWith<$Res> {
  __$PromoCodeModelCopyWithImpl(this._self, this._then);

  final _PromoCodeModel _self;
  final $Res Function(_PromoCodeModel) _then;

/// Create a copy of PromoCodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? discount = null,Object? minOrderAmount = null,Object? startDate = null,Object? endDate = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PromoCodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
