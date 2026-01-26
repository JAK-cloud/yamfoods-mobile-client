// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppVersionModel {

 String get version; int get buildNumber; bool get mustBeBlocking; String? get playstoreLink; String? get appstoreLink;
/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionModelCopyWith<AppVersionModel> get copyWith => _$AppVersionModelCopyWithImpl<AppVersionModel>(this as AppVersionModel, _$identity);

  /// Serializes this AppVersionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionModel&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.mustBeBlocking, mustBeBlocking) || other.mustBeBlocking == mustBeBlocking)&&(identical(other.playstoreLink, playstoreLink) || other.playstoreLink == playstoreLink)&&(identical(other.appstoreLink, appstoreLink) || other.appstoreLink == appstoreLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,buildNumber,mustBeBlocking,playstoreLink,appstoreLink);

@override
String toString() {
  return 'AppVersionModel(version: $version, buildNumber: $buildNumber, mustBeBlocking: $mustBeBlocking, playstoreLink: $playstoreLink, appstoreLink: $appstoreLink)';
}


}

/// @nodoc
abstract mixin class $AppVersionModelCopyWith<$Res>  {
  factory $AppVersionModelCopyWith(AppVersionModel value, $Res Function(AppVersionModel) _then) = _$AppVersionModelCopyWithImpl;
@useResult
$Res call({
 String version, int buildNumber, bool mustBeBlocking, String? playstoreLink, String? appstoreLink
});




}
/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._self, this._then);

  final AppVersionModel _self;
  final $Res Function(AppVersionModel) _then;

/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? buildNumber = null,Object? mustBeBlocking = null,Object? playstoreLink = freezed,Object? appstoreLink = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as int,mustBeBlocking: null == mustBeBlocking ? _self.mustBeBlocking : mustBeBlocking // ignore: cast_nullable_to_non_nullable
as bool,playstoreLink: freezed == playstoreLink ? _self.playstoreLink : playstoreLink // ignore: cast_nullable_to_non_nullable
as String?,appstoreLink: freezed == appstoreLink ? _self.appstoreLink : appstoreLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionModel].
extension AppVersionModelPatterns on AppVersionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionModel value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  int buildNumber,  bool mustBeBlocking,  String? playstoreLink,  String? appstoreLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
return $default(_that.version,_that.buildNumber,_that.mustBeBlocking,_that.playstoreLink,_that.appstoreLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  int buildNumber,  bool mustBeBlocking,  String? playstoreLink,  String? appstoreLink)  $default,) {final _that = this;
switch (_that) {
case _AppVersionModel():
return $default(_that.version,_that.buildNumber,_that.mustBeBlocking,_that.playstoreLink,_that.appstoreLink);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  int buildNumber,  bool mustBeBlocking,  String? playstoreLink,  String? appstoreLink)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
return $default(_that.version,_that.buildNumber,_that.mustBeBlocking,_that.playstoreLink,_that.appstoreLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionModel extends AppVersionModel {
  const _AppVersionModel({required this.version, required this.buildNumber, required this.mustBeBlocking, this.playstoreLink, this.appstoreLink}): super._();
  factory _AppVersionModel.fromJson(Map<String, dynamic> json) => _$AppVersionModelFromJson(json);

@override final  String version;
@override final  int buildNumber;
@override final  bool mustBeBlocking;
@override final  String? playstoreLink;
@override final  String? appstoreLink;

/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionModelCopyWith<_AppVersionModel> get copyWith => __$AppVersionModelCopyWithImpl<_AppVersionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppVersionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionModel&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.mustBeBlocking, mustBeBlocking) || other.mustBeBlocking == mustBeBlocking)&&(identical(other.playstoreLink, playstoreLink) || other.playstoreLink == playstoreLink)&&(identical(other.appstoreLink, appstoreLink) || other.appstoreLink == appstoreLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,buildNumber,mustBeBlocking,playstoreLink,appstoreLink);

@override
String toString() {
  return 'AppVersionModel(version: $version, buildNumber: $buildNumber, mustBeBlocking: $mustBeBlocking, playstoreLink: $playstoreLink, appstoreLink: $appstoreLink)';
}


}

/// @nodoc
abstract mixin class _$AppVersionModelCopyWith<$Res> implements $AppVersionModelCopyWith<$Res> {
  factory _$AppVersionModelCopyWith(_AppVersionModel value, $Res Function(_AppVersionModel) _then) = __$AppVersionModelCopyWithImpl;
@override @useResult
$Res call({
 String version, int buildNumber, bool mustBeBlocking, String? playstoreLink, String? appstoreLink
});




}
/// @nodoc
class __$AppVersionModelCopyWithImpl<$Res>
    implements _$AppVersionModelCopyWith<$Res> {
  __$AppVersionModelCopyWithImpl(this._self, this._then);

  final _AppVersionModel _self;
  final $Res Function(_AppVersionModel) _then;

/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? buildNumber = null,Object? mustBeBlocking = null,Object? playstoreLink = freezed,Object? appstoreLink = freezed,}) {
  return _then(_AppVersionModel(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as int,mustBeBlocking: null == mustBeBlocking ? _self.mustBeBlocking : mustBeBlocking // ignore: cast_nullable_to_non_nullable
as bool,playstoreLink: freezed == playstoreLink ? _self.playstoreLink : playstoreLink // ignore: cast_nullable_to_non_nullable
as String?,appstoreLink: freezed == appstoreLink ? _self.appstoreLink : appstoreLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
