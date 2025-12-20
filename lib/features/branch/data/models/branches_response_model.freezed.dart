// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branches_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchesResponseModel {

 List<BranchModel> get branches;
/// Create a copy of BranchesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchesResponseModelCopyWith<BranchesResponseModel> get copyWith => _$BranchesResponseModelCopyWithImpl<BranchesResponseModel>(this as BranchesResponseModel, _$identity);

  /// Serializes this BranchesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchesResponseModel&&const DeepCollectionEquality().equals(other.branches, branches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(branches));

@override
String toString() {
  return 'BranchesResponseModel(branches: $branches)';
}


}

/// @nodoc
abstract mixin class $BranchesResponseModelCopyWith<$Res>  {
  factory $BranchesResponseModelCopyWith(BranchesResponseModel value, $Res Function(BranchesResponseModel) _then) = _$BranchesResponseModelCopyWithImpl;
@useResult
$Res call({
 List<BranchModel> branches
});




}
/// @nodoc
class _$BranchesResponseModelCopyWithImpl<$Res>
    implements $BranchesResponseModelCopyWith<$Res> {
  _$BranchesResponseModelCopyWithImpl(this._self, this._then);

  final BranchesResponseModel _self;
  final $Res Function(BranchesResponseModel) _then;

/// Create a copy of BranchesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branches = null,}) {
  return _then(_self.copyWith(
branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchesResponseModel].
extension BranchesResponseModelPatterns on BranchesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BranchesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BranchesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BranchModel> branches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchesResponseModel() when $default != null:
return $default(_that.branches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BranchModel> branches)  $default,) {final _that = this;
switch (_that) {
case _BranchesResponseModel():
return $default(_that.branches);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BranchModel> branches)?  $default,) {final _that = this;
switch (_that) {
case _BranchesResponseModel() when $default != null:
return $default(_that.branches);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchesResponseModel implements BranchesResponseModel {
  const _BranchesResponseModel({required final  List<BranchModel> branches}): _branches = branches;
  factory _BranchesResponseModel.fromJson(Map<String, dynamic> json) => _$BranchesResponseModelFromJson(json);

 final  List<BranchModel> _branches;
@override List<BranchModel> get branches {
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branches);
}


/// Create a copy of BranchesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchesResponseModelCopyWith<_BranchesResponseModel> get copyWith => __$BranchesResponseModelCopyWithImpl<_BranchesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchesResponseModel&&const DeepCollectionEquality().equals(other._branches, _branches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branches));

@override
String toString() {
  return 'BranchesResponseModel(branches: $branches)';
}


}

/// @nodoc
abstract mixin class _$BranchesResponseModelCopyWith<$Res> implements $BranchesResponseModelCopyWith<$Res> {
  factory _$BranchesResponseModelCopyWith(_BranchesResponseModel value, $Res Function(_BranchesResponseModel) _then) = __$BranchesResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<BranchModel> branches
});




}
/// @nodoc
class __$BranchesResponseModelCopyWithImpl<$Res>
    implements _$BranchesResponseModelCopyWith<$Res> {
  __$BranchesResponseModelCopyWithImpl(this._self, this._then);

  final _BranchesResponseModel _self;
  final $Res Function(_BranchesResponseModel) _then;

/// Create a copy of BranchesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branches = null,}) {
  return _then(_BranchesResponseModel(
branches: null == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchModel>,
  ));
}


}

// dart format on
