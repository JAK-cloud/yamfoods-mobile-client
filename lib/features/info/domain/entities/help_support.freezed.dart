// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HelpSupport {

 int get id; String get email; String get phone1; String? get phone2; String? get telegram; String? get instagram; String? get facebook; String? get tiktok; String? get website; String get address; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of HelpSupport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelpSupportCopyWith<HelpSupport> get copyWith => _$HelpSupportCopyWithImpl<HelpSupport>(this as HelpSupport, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelpSupport&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.tiktok, tiktok) || other.tiktok == tiktok)&&(identical(other.website, website) || other.website == website)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,phone1,phone2,telegram,instagram,facebook,tiktok,website,address,createdAt,updatedAt);

@override
String toString() {
  return 'HelpSupport(id: $id, email: $email, phone1: $phone1, phone2: $phone2, telegram: $telegram, instagram: $instagram, facebook: $facebook, tiktok: $tiktok, website: $website, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HelpSupportCopyWith<$Res>  {
  factory $HelpSupportCopyWith(HelpSupport value, $Res Function(HelpSupport) _then) = _$HelpSupportCopyWithImpl;
@useResult
$Res call({
 int id, String email, String phone1, String? phone2, String? telegram, String? instagram, String? facebook, String? tiktok, String? website, String address, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$HelpSupportCopyWithImpl<$Res>
    implements $HelpSupportCopyWith<$Res> {
  _$HelpSupportCopyWithImpl(this._self, this._then);

  final HelpSupport _self;
  final $Res Function(HelpSupport) _then;

/// Create a copy of HelpSupport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? phone1 = null,Object? phone2 = freezed,Object? telegram = freezed,Object? instagram = freezed,Object? facebook = freezed,Object? tiktok = freezed,Object? website = freezed,Object? address = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone1: null == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,instagram: freezed == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String?,facebook: freezed == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String?,tiktok: freezed == tiktok ? _self.tiktok : tiktok // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [HelpSupport].
extension HelpSupportPatterns on HelpSupport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelpSupport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelpSupport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelpSupport value)  $default,){
final _that = this;
switch (_that) {
case _HelpSupport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelpSupport value)?  $default,){
final _that = this;
switch (_that) {
case _HelpSupport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String phone1,  String? phone2,  String? telegram,  String? instagram,  String? facebook,  String? tiktok,  String? website,  String address,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelpSupport() when $default != null:
return $default(_that.id,_that.email,_that.phone1,_that.phone2,_that.telegram,_that.instagram,_that.facebook,_that.tiktok,_that.website,_that.address,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String phone1,  String? phone2,  String? telegram,  String? instagram,  String? facebook,  String? tiktok,  String? website,  String address,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HelpSupport():
return $default(_that.id,_that.email,_that.phone1,_that.phone2,_that.telegram,_that.instagram,_that.facebook,_that.tiktok,_that.website,_that.address,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String phone1,  String? phone2,  String? telegram,  String? instagram,  String? facebook,  String? tiktok,  String? website,  String address,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HelpSupport() when $default != null:
return $default(_that.id,_that.email,_that.phone1,_that.phone2,_that.telegram,_that.instagram,_that.facebook,_that.tiktok,_that.website,_that.address,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _HelpSupport implements HelpSupport {
  const _HelpSupport({required this.id, required this.email, required this.phone1, this.phone2, this.telegram, this.instagram, this.facebook, this.tiktok, this.website, required this.address, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  String email;
@override final  String phone1;
@override final  String? phone2;
@override final  String? telegram;
@override final  String? instagram;
@override final  String? facebook;
@override final  String? tiktok;
@override final  String? website;
@override final  String address;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of HelpSupport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelpSupportCopyWith<_HelpSupport> get copyWith => __$HelpSupportCopyWithImpl<_HelpSupport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelpSupport&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.telegram, telegram) || other.telegram == telegram)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.tiktok, tiktok) || other.tiktok == tiktok)&&(identical(other.website, website) || other.website == website)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,phone1,phone2,telegram,instagram,facebook,tiktok,website,address,createdAt,updatedAt);

@override
String toString() {
  return 'HelpSupport(id: $id, email: $email, phone1: $phone1, phone2: $phone2, telegram: $telegram, instagram: $instagram, facebook: $facebook, tiktok: $tiktok, website: $website, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HelpSupportCopyWith<$Res> implements $HelpSupportCopyWith<$Res> {
  factory _$HelpSupportCopyWith(_HelpSupport value, $Res Function(_HelpSupport) _then) = __$HelpSupportCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String phone1, String? phone2, String? telegram, String? instagram, String? facebook, String? tiktok, String? website, String address, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$HelpSupportCopyWithImpl<$Res>
    implements _$HelpSupportCopyWith<$Res> {
  __$HelpSupportCopyWithImpl(this._self, this._then);

  final _HelpSupport _self;
  final $Res Function(_HelpSupport) _then;

/// Create a copy of HelpSupport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? phone1 = null,Object? phone2 = freezed,Object? telegram = freezed,Object? instagram = freezed,Object? facebook = freezed,Object? tiktok = freezed,Object? website = freezed,Object? address = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_HelpSupport(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone1: null == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,telegram: freezed == telegram ? _self.telegram : telegram // ignore: cast_nullable_to_non_nullable
as String?,instagram: freezed == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String?,facebook: freezed == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String?,tiktok: freezed == tiktok ? _self.tiktok : tiktok // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
