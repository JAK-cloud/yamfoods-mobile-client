// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_and_conditions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TermsAndConditions {

 int get id; String get title; String get description; String? get link; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of TermsAndConditions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermsAndConditionsCopyWith<TermsAndConditions> get copyWith => _$TermsAndConditionsCopyWithImpl<TermsAndConditions>(this as TermsAndConditions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TermsAndConditions&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,link,createdAt,updatedAt);

@override
String toString() {
  return 'TermsAndConditions(id: $id, title: $title, description: $description, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TermsAndConditionsCopyWith<$Res>  {
  factory $TermsAndConditionsCopyWith(TermsAndConditions value, $Res Function(TermsAndConditions) _then) = _$TermsAndConditionsCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String? link, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$TermsAndConditionsCopyWithImpl<$Res>
    implements $TermsAndConditionsCopyWith<$Res> {
  _$TermsAndConditionsCopyWithImpl(this._self, this._then);

  final TermsAndConditions _self;
  final $Res Function(TermsAndConditions) _then;

/// Create a copy of TermsAndConditions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? link = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TermsAndConditions].
extension TermsAndConditionsPatterns on TermsAndConditions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TermsAndConditions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TermsAndConditions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TermsAndConditions value)  $default,){
final _that = this;
switch (_that) {
case _TermsAndConditions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TermsAndConditions value)?  $default,){
final _that = this;
switch (_that) {
case _TermsAndConditions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String? link,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TermsAndConditions() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.link,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String? link,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TermsAndConditions():
return $default(_that.id,_that.title,_that.description,_that.link,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String? link,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TermsAndConditions() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.link,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _TermsAndConditions implements TermsAndConditions {
  const _TermsAndConditions({required this.id, required this.title, required this.description, this.link, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String? link;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of TermsAndConditions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TermsAndConditionsCopyWith<_TermsAndConditions> get copyWith => __$TermsAndConditionsCopyWithImpl<_TermsAndConditions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TermsAndConditions&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,link,createdAt,updatedAt);

@override
String toString() {
  return 'TermsAndConditions(id: $id, title: $title, description: $description, link: $link, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TermsAndConditionsCopyWith<$Res> implements $TermsAndConditionsCopyWith<$Res> {
  factory _$TermsAndConditionsCopyWith(_TermsAndConditions value, $Res Function(_TermsAndConditions) _then) = __$TermsAndConditionsCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String? link, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$TermsAndConditionsCopyWithImpl<$Res>
    implements _$TermsAndConditionsCopyWith<$Res> {
  __$TermsAndConditionsCopyWithImpl(this._self, this._then);

  final _TermsAndConditions _self;
  final $Res Function(_TermsAndConditions) _then;

/// Create a copy of TermsAndConditions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? link = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_TermsAndConditions(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
