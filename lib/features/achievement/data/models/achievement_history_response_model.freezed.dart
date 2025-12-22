// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AchievementHistoryResponseModel {

 List<AchievementTransactionModel> get transaction;
/// Create a copy of AchievementHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementHistoryResponseModelCopyWith<AchievementHistoryResponseModel> get copyWith => _$AchievementHistoryResponseModelCopyWithImpl<AchievementHistoryResponseModel>(this as AchievementHistoryResponseModel, _$identity);

  /// Serializes this AchievementHistoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementHistoryResponseModel&&const DeepCollectionEquality().equals(other.transaction, transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transaction));

@override
String toString() {
  return 'AchievementHistoryResponseModel(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $AchievementHistoryResponseModelCopyWith<$Res>  {
  factory $AchievementHistoryResponseModelCopyWith(AchievementHistoryResponseModel value, $Res Function(AchievementHistoryResponseModel) _then) = _$AchievementHistoryResponseModelCopyWithImpl;
@useResult
$Res call({
 List<AchievementTransactionModel> transaction
});




}
/// @nodoc
class _$AchievementHistoryResponseModelCopyWithImpl<$Res>
    implements $AchievementHistoryResponseModelCopyWith<$Res> {
  _$AchievementHistoryResponseModelCopyWithImpl(this._self, this._then);

  final AchievementHistoryResponseModel _self;
  final $Res Function(AchievementHistoryResponseModel) _then;

/// Create a copy of AchievementHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = null,}) {
  return _then(_self.copyWith(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as List<AchievementTransactionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementHistoryResponseModel].
extension AchievementHistoryResponseModelPatterns on AchievementHistoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementHistoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementHistoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AchievementHistoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementHistoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AchievementTransactionModel> transaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AchievementHistoryResponseModel() when $default != null:
return $default(_that.transaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AchievementTransactionModel> transaction)  $default,) {final _that = this;
switch (_that) {
case _AchievementHistoryResponseModel():
return $default(_that.transaction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AchievementTransactionModel> transaction)?  $default,) {final _that = this;
switch (_that) {
case _AchievementHistoryResponseModel() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AchievementHistoryResponseModel implements AchievementHistoryResponseModel {
  const _AchievementHistoryResponseModel({required final  List<AchievementTransactionModel> transaction}): _transaction = transaction;
  factory _AchievementHistoryResponseModel.fromJson(Map<String, dynamic> json) => _$AchievementHistoryResponseModelFromJson(json);

 final  List<AchievementTransactionModel> _transaction;
@override List<AchievementTransactionModel> get transaction {
  if (_transaction is EqualUnmodifiableListView) return _transaction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transaction);
}


/// Create a copy of AchievementHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementHistoryResponseModelCopyWith<_AchievementHistoryResponseModel> get copyWith => __$AchievementHistoryResponseModelCopyWithImpl<_AchievementHistoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AchievementHistoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementHistoryResponseModel&&const DeepCollectionEquality().equals(other._transaction, _transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transaction));

@override
String toString() {
  return 'AchievementHistoryResponseModel(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$AchievementHistoryResponseModelCopyWith<$Res> implements $AchievementHistoryResponseModelCopyWith<$Res> {
  factory _$AchievementHistoryResponseModelCopyWith(_AchievementHistoryResponseModel value, $Res Function(_AchievementHistoryResponseModel) _then) = __$AchievementHistoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<AchievementTransactionModel> transaction
});




}
/// @nodoc
class __$AchievementHistoryResponseModelCopyWithImpl<$Res>
    implements _$AchievementHistoryResponseModelCopyWith<$Res> {
  __$AchievementHistoryResponseModelCopyWithImpl(this._self, this._then);

  final _AchievementHistoryResponseModel _self;
  final $Res Function(_AchievementHistoryResponseModel) _then;

/// Create a copy of AchievementHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_AchievementHistoryResponseModel(
transaction: null == transaction ? _self._transaction : transaction // ignore: cast_nullable_to_non_nullable
as List<AchievementTransactionModel>,
  ));
}


}

// dart format on
