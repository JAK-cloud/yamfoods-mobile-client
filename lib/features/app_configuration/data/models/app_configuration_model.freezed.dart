// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configuration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfigurationModel {

 int get id;@JsonKey(fromJson: parseDouble) double get pointConversionRate; int get minimumPointsRedemption; int get maxCartItems; int get maxQuantityPerItem;@JsonKey(fromJson: parseDouble) double get deliveryFeePerKm; int get maxOrderSchedulingDays; DateTime get createdAt; DateTime get updatedAt; AppVersionModel get appVersion;
/// Create a copy of AppConfigurationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigurationModelCopyWith<AppConfigurationModel> get copyWith => _$AppConfigurationModelCopyWithImpl<AppConfigurationModel>(this as AppConfigurationModel, _$identity);

  /// Serializes this AppConfigurationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigurationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pointConversionRate, pointConversionRate) || other.pointConversionRate == pointConversionRate)&&(identical(other.minimumPointsRedemption, minimumPointsRedemption) || other.minimumPointsRedemption == minimumPointsRedemption)&&(identical(other.maxCartItems, maxCartItems) || other.maxCartItems == maxCartItems)&&(identical(other.maxQuantityPerItem, maxQuantityPerItem) || other.maxQuantityPerItem == maxQuantityPerItem)&&(identical(other.deliveryFeePerKm, deliveryFeePerKm) || other.deliveryFeePerKm == deliveryFeePerKm)&&(identical(other.maxOrderSchedulingDays, maxOrderSchedulingDays) || other.maxOrderSchedulingDays == maxOrderSchedulingDays)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pointConversionRate,minimumPointsRedemption,maxCartItems,maxQuantityPerItem,deliveryFeePerKm,maxOrderSchedulingDays,createdAt,updatedAt,appVersion);

@override
String toString() {
  return 'AppConfigurationModel(id: $id, pointConversionRate: $pointConversionRate, minimumPointsRedemption: $minimumPointsRedemption, maxCartItems: $maxCartItems, maxQuantityPerItem: $maxQuantityPerItem, deliveryFeePerKm: $deliveryFeePerKm, maxOrderSchedulingDays: $maxOrderSchedulingDays, createdAt: $createdAt, updatedAt: $updatedAt, appVersion: $appVersion)';
}


}

/// @nodoc
abstract mixin class $AppConfigurationModelCopyWith<$Res>  {
  factory $AppConfigurationModelCopyWith(AppConfigurationModel value, $Res Function(AppConfigurationModel) _then) = _$AppConfigurationModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(fromJson: parseDouble) double pointConversionRate, int minimumPointsRedemption, int maxCartItems, int maxQuantityPerItem,@JsonKey(fromJson: parseDouble) double deliveryFeePerKm, int maxOrderSchedulingDays, DateTime createdAt, DateTime updatedAt, AppVersionModel appVersion
});


$AppVersionModelCopyWith<$Res> get appVersion;

}
/// @nodoc
class _$AppConfigurationModelCopyWithImpl<$Res>
    implements $AppConfigurationModelCopyWith<$Res> {
  _$AppConfigurationModelCopyWithImpl(this._self, this._then);

  final AppConfigurationModel _self;
  final $Res Function(AppConfigurationModel) _then;

/// Create a copy of AppConfigurationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pointConversionRate = null,Object? minimumPointsRedemption = null,Object? maxCartItems = null,Object? maxQuantityPerItem = null,Object? deliveryFeePerKm = null,Object? maxOrderSchedulingDays = null,Object? createdAt = null,Object? updatedAt = null,Object? appVersion = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pointConversionRate: null == pointConversionRate ? _self.pointConversionRate : pointConversionRate // ignore: cast_nullable_to_non_nullable
as double,minimumPointsRedemption: null == minimumPointsRedemption ? _self.minimumPointsRedemption : minimumPointsRedemption // ignore: cast_nullable_to_non_nullable
as int,maxCartItems: null == maxCartItems ? _self.maxCartItems : maxCartItems // ignore: cast_nullable_to_non_nullable
as int,maxQuantityPerItem: null == maxQuantityPerItem ? _self.maxQuantityPerItem : maxQuantityPerItem // ignore: cast_nullable_to_non_nullable
as int,deliveryFeePerKm: null == deliveryFeePerKm ? _self.deliveryFeePerKm : deliveryFeePerKm // ignore: cast_nullable_to_non_nullable
as double,maxOrderSchedulingDays: null == maxOrderSchedulingDays ? _self.maxOrderSchedulingDays : maxOrderSchedulingDays // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as AppVersionModel,
  ));
}
/// Create a copy of AppConfigurationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppVersionModelCopyWith<$Res> get appVersion {
  
  return $AppVersionModelCopyWith<$Res>(_self.appVersion, (value) {
    return _then(_self.copyWith(appVersion: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppConfigurationModel].
extension AppConfigurationModelPatterns on AppConfigurationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigurationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigurationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigurationModel value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigurationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigurationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigurationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: parseDouble)  double pointConversionRate,  int minimumPointsRedemption,  int maxCartItems,  int maxQuantityPerItem, @JsonKey(fromJson: parseDouble)  double deliveryFeePerKm,  int maxOrderSchedulingDays,  DateTime createdAt,  DateTime updatedAt,  AppVersionModel appVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigurationModel() when $default != null:
return $default(_that.id,_that.pointConversionRate,_that.minimumPointsRedemption,_that.maxCartItems,_that.maxQuantityPerItem,_that.deliveryFeePerKm,_that.maxOrderSchedulingDays,_that.createdAt,_that.updatedAt,_that.appVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(fromJson: parseDouble)  double pointConversionRate,  int minimumPointsRedemption,  int maxCartItems,  int maxQuantityPerItem, @JsonKey(fromJson: parseDouble)  double deliveryFeePerKm,  int maxOrderSchedulingDays,  DateTime createdAt,  DateTime updatedAt,  AppVersionModel appVersion)  $default,) {final _that = this;
switch (_that) {
case _AppConfigurationModel():
return $default(_that.id,_that.pointConversionRate,_that.minimumPointsRedemption,_that.maxCartItems,_that.maxQuantityPerItem,_that.deliveryFeePerKm,_that.maxOrderSchedulingDays,_that.createdAt,_that.updatedAt,_that.appVersion);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(fromJson: parseDouble)  double pointConversionRate,  int minimumPointsRedemption,  int maxCartItems,  int maxQuantityPerItem, @JsonKey(fromJson: parseDouble)  double deliveryFeePerKm,  int maxOrderSchedulingDays,  DateTime createdAt,  DateTime updatedAt,  AppVersionModel appVersion)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigurationModel() when $default != null:
return $default(_that.id,_that.pointConversionRate,_that.minimumPointsRedemption,_that.maxCartItems,_that.maxQuantityPerItem,_that.deliveryFeePerKm,_that.maxOrderSchedulingDays,_that.createdAt,_that.updatedAt,_that.appVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppConfigurationModel extends AppConfigurationModel {
  const _AppConfigurationModel({required this.id, @JsonKey(fromJson: parseDouble) required this.pointConversionRate, required this.minimumPointsRedemption, required this.maxCartItems, required this.maxQuantityPerItem, @JsonKey(fromJson: parseDouble) required this.deliveryFeePerKm, required this.maxOrderSchedulingDays, required this.createdAt, required this.updatedAt, required this.appVersion}): super._();
  factory _AppConfigurationModel.fromJson(Map<String, dynamic> json) => _$AppConfigurationModelFromJson(json);

@override final  int id;
@override@JsonKey(fromJson: parseDouble) final  double pointConversionRate;
@override final  int minimumPointsRedemption;
@override final  int maxCartItems;
@override final  int maxQuantityPerItem;
@override@JsonKey(fromJson: parseDouble) final  double deliveryFeePerKm;
@override final  int maxOrderSchedulingDays;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  AppVersionModel appVersion;

/// Create a copy of AppConfigurationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigurationModelCopyWith<_AppConfigurationModel> get copyWith => __$AppConfigurationModelCopyWithImpl<_AppConfigurationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppConfigurationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigurationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pointConversionRate, pointConversionRate) || other.pointConversionRate == pointConversionRate)&&(identical(other.minimumPointsRedemption, minimumPointsRedemption) || other.minimumPointsRedemption == minimumPointsRedemption)&&(identical(other.maxCartItems, maxCartItems) || other.maxCartItems == maxCartItems)&&(identical(other.maxQuantityPerItem, maxQuantityPerItem) || other.maxQuantityPerItem == maxQuantityPerItem)&&(identical(other.deliveryFeePerKm, deliveryFeePerKm) || other.deliveryFeePerKm == deliveryFeePerKm)&&(identical(other.maxOrderSchedulingDays, maxOrderSchedulingDays) || other.maxOrderSchedulingDays == maxOrderSchedulingDays)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pointConversionRate,minimumPointsRedemption,maxCartItems,maxQuantityPerItem,deliveryFeePerKm,maxOrderSchedulingDays,createdAt,updatedAt,appVersion);

@override
String toString() {
  return 'AppConfigurationModel(id: $id, pointConversionRate: $pointConversionRate, minimumPointsRedemption: $minimumPointsRedemption, maxCartItems: $maxCartItems, maxQuantityPerItem: $maxQuantityPerItem, deliveryFeePerKm: $deliveryFeePerKm, maxOrderSchedulingDays: $maxOrderSchedulingDays, createdAt: $createdAt, updatedAt: $updatedAt, appVersion: $appVersion)';
}


}

/// @nodoc
abstract mixin class _$AppConfigurationModelCopyWith<$Res> implements $AppConfigurationModelCopyWith<$Res> {
  factory _$AppConfigurationModelCopyWith(_AppConfigurationModel value, $Res Function(_AppConfigurationModel) _then) = __$AppConfigurationModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(fromJson: parseDouble) double pointConversionRate, int minimumPointsRedemption, int maxCartItems, int maxQuantityPerItem,@JsonKey(fromJson: parseDouble) double deliveryFeePerKm, int maxOrderSchedulingDays, DateTime createdAt, DateTime updatedAt, AppVersionModel appVersion
});


@override $AppVersionModelCopyWith<$Res> get appVersion;

}
/// @nodoc
class __$AppConfigurationModelCopyWithImpl<$Res>
    implements _$AppConfigurationModelCopyWith<$Res> {
  __$AppConfigurationModelCopyWithImpl(this._self, this._then);

  final _AppConfigurationModel _self;
  final $Res Function(_AppConfigurationModel) _then;

/// Create a copy of AppConfigurationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pointConversionRate = null,Object? minimumPointsRedemption = null,Object? maxCartItems = null,Object? maxQuantityPerItem = null,Object? deliveryFeePerKm = null,Object? maxOrderSchedulingDays = null,Object? createdAt = null,Object? updatedAt = null,Object? appVersion = null,}) {
  return _then(_AppConfigurationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pointConversionRate: null == pointConversionRate ? _self.pointConversionRate : pointConversionRate // ignore: cast_nullable_to_non_nullable
as double,minimumPointsRedemption: null == minimumPointsRedemption ? _self.minimumPointsRedemption : minimumPointsRedemption // ignore: cast_nullable_to_non_nullable
as int,maxCartItems: null == maxCartItems ? _self.maxCartItems : maxCartItems // ignore: cast_nullable_to_non_nullable
as int,maxQuantityPerItem: null == maxQuantityPerItem ? _self.maxQuantityPerItem : maxQuantityPerItem // ignore: cast_nullable_to_non_nullable
as int,deliveryFeePerKm: null == deliveryFeePerKm ? _self.deliveryFeePerKm : deliveryFeePerKm // ignore: cast_nullable_to_non_nullable
as double,maxOrderSchedulingDays: null == maxOrderSchedulingDays ? _self.maxOrderSchedulingDays : maxOrderSchedulingDays // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as AppVersionModel,
  ));
}

/// Create a copy of AppConfigurationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppVersionModelCopyWith<$Res> get appVersion {
  
  return $AppVersionModelCopyWith<$Res>(_self.appVersion, (value) {
    return _then(_self.copyWith(appVersion: value));
  });
}
}

// dart format on
