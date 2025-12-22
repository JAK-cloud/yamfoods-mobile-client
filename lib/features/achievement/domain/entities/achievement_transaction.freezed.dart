// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AchievementTransaction {

 int get id; int get userId; String get type; int get points; int? get relatedUserId; int? get referenceId; String? get description; DateTime get createdAt;
/// Create a copy of AchievementTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementTransactionCopyWith<AchievementTransaction> get copyWith => _$AchievementTransactionCopyWithImpl<AchievementTransaction>(this as AchievementTransaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.points, points) || other.points == points)&&(identical(other.relatedUserId, relatedUserId) || other.relatedUserId == relatedUserId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,points,relatedUserId,referenceId,description,createdAt);

@override
String toString() {
  return 'AchievementTransaction(id: $id, userId: $userId, type: $type, points: $points, relatedUserId: $relatedUserId, referenceId: $referenceId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AchievementTransactionCopyWith<$Res>  {
  factory $AchievementTransactionCopyWith(AchievementTransaction value, $Res Function(AchievementTransaction) _then) = _$AchievementTransactionCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String type, int points, int? relatedUserId, int? referenceId, String? description, DateTime createdAt
});




}
/// @nodoc
class _$AchievementTransactionCopyWithImpl<$Res>
    implements $AchievementTransactionCopyWith<$Res> {
  _$AchievementTransactionCopyWithImpl(this._self, this._then);

  final AchievementTransaction _self;
  final $Res Function(AchievementTransaction) _then;

/// Create a copy of AchievementTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? points = null,Object? relatedUserId = freezed,Object? referenceId = freezed,Object? description = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,relatedUserId: freezed == relatedUserId ? _self.relatedUserId : relatedUserId // ignore: cast_nullable_to_non_nullable
as int?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementTransaction].
extension AchievementTransactionPatterns on AchievementTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementTransaction value)  $default,){
final _that = this;
switch (_that) {
case _AchievementTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String type,  int points,  int? relatedUserId,  int? referenceId,  String? description,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AchievementTransaction() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.points,_that.relatedUserId,_that.referenceId,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String type,  int points,  int? relatedUserId,  int? referenceId,  String? description,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _AchievementTransaction():
return $default(_that.id,_that.userId,_that.type,_that.points,_that.relatedUserId,_that.referenceId,_that.description,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String type,  int points,  int? relatedUserId,  int? referenceId,  String? description,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AchievementTransaction() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.points,_that.relatedUserId,_that.referenceId,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _AchievementTransaction implements AchievementTransaction {
  const _AchievementTransaction({required this.id, required this.userId, required this.type, required this.points, this.relatedUserId, this.referenceId, this.description, required this.createdAt});
  

@override final  int id;
@override final  int userId;
@override final  String type;
@override final  int points;
@override final  int? relatedUserId;
@override final  int? referenceId;
@override final  String? description;
@override final  DateTime createdAt;

/// Create a copy of AchievementTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementTransactionCopyWith<_AchievementTransaction> get copyWith => __$AchievementTransactionCopyWithImpl<_AchievementTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.points, points) || other.points == points)&&(identical(other.relatedUserId, relatedUserId) || other.relatedUserId == relatedUserId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,points,relatedUserId,referenceId,description,createdAt);

@override
String toString() {
  return 'AchievementTransaction(id: $id, userId: $userId, type: $type, points: $points, relatedUserId: $relatedUserId, referenceId: $referenceId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AchievementTransactionCopyWith<$Res> implements $AchievementTransactionCopyWith<$Res> {
  factory _$AchievementTransactionCopyWith(_AchievementTransaction value, $Res Function(_AchievementTransaction) _then) = __$AchievementTransactionCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String type, int points, int? relatedUserId, int? referenceId, String? description, DateTime createdAt
});




}
/// @nodoc
class __$AchievementTransactionCopyWithImpl<$Res>
    implements _$AchievementTransactionCopyWith<$Res> {
  __$AchievementTransactionCopyWithImpl(this._self, this._then);

  final _AchievementTransaction _self;
  final $Res Function(_AchievementTransaction) _then;

/// Create a copy of AchievementTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? points = null,Object? relatedUserId = freezed,Object? referenceId = freezed,Object? description = freezed,Object? createdAt = null,}) {
  return _then(_AchievementTransaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,relatedUserId: freezed == relatedUserId ? _self.relatedUserId : relatedUserId // ignore: cast_nullable_to_non_nullable
as int?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
