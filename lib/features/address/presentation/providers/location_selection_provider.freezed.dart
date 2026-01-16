// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_selection_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationSelectionState {

 LocationSelectionMode get mode;/// Nullable until GPS fetched or existing coordinates set
 double? get selectedLat; double? get selectedLng; bool get isLoadingLocation; String? get errorMessage; Position? get currentPosition;/// Tracks if initialized with existing address (update mode)
 bool get isInitializedWithExisting;
/// Create a copy of LocationSelectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationSelectionStateCopyWith<LocationSelectionState> get copyWith => _$LocationSelectionStateCopyWithImpl<LocationSelectionState>(this as LocationSelectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationSelectionState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.selectedLat, selectedLat) || other.selectedLat == selectedLat)&&(identical(other.selectedLng, selectedLng) || other.selectedLng == selectedLng)&&(identical(other.isLoadingLocation, isLoadingLocation) || other.isLoadingLocation == isLoadingLocation)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.isInitializedWithExisting, isInitializedWithExisting) || other.isInitializedWithExisting == isInitializedWithExisting));
}


@override
int get hashCode => Object.hash(runtimeType,mode,selectedLat,selectedLng,isLoadingLocation,errorMessage,currentPosition,isInitializedWithExisting);

@override
String toString() {
  return 'LocationSelectionState(mode: $mode, selectedLat: $selectedLat, selectedLng: $selectedLng, isLoadingLocation: $isLoadingLocation, errorMessage: $errorMessage, currentPosition: $currentPosition, isInitializedWithExisting: $isInitializedWithExisting)';
}


}

/// @nodoc
abstract mixin class $LocationSelectionStateCopyWith<$Res>  {
  factory $LocationSelectionStateCopyWith(LocationSelectionState value, $Res Function(LocationSelectionState) _then) = _$LocationSelectionStateCopyWithImpl;
@useResult
$Res call({
 LocationSelectionMode mode, double? selectedLat, double? selectedLng, bool isLoadingLocation, String? errorMessage, Position? currentPosition, bool isInitializedWithExisting
});




}
/// @nodoc
class _$LocationSelectionStateCopyWithImpl<$Res>
    implements $LocationSelectionStateCopyWith<$Res> {
  _$LocationSelectionStateCopyWithImpl(this._self, this._then);

  final LocationSelectionState _self;
  final $Res Function(LocationSelectionState) _then;

/// Create a copy of LocationSelectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? selectedLat = freezed,Object? selectedLng = freezed,Object? isLoadingLocation = null,Object? errorMessage = freezed,Object? currentPosition = freezed,Object? isInitializedWithExisting = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as LocationSelectionMode,selectedLat: freezed == selectedLat ? _self.selectedLat : selectedLat // ignore: cast_nullable_to_non_nullable
as double?,selectedLng: freezed == selectedLng ? _self.selectedLng : selectedLng // ignore: cast_nullable_to_non_nullable
as double?,isLoadingLocation: null == isLoadingLocation ? _self.isLoadingLocation : isLoadingLocation // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentPosition: freezed == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as Position?,isInitializedWithExisting: null == isInitializedWithExisting ? _self.isInitializedWithExisting : isInitializedWithExisting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationSelectionState].
extension LocationSelectionStatePatterns on LocationSelectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationSelectionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationSelectionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationSelectionState value)  $default,){
final _that = this;
switch (_that) {
case _LocationSelectionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationSelectionState value)?  $default,){
final _that = this;
switch (_that) {
case _LocationSelectionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocationSelectionMode mode,  double? selectedLat,  double? selectedLng,  bool isLoadingLocation,  String? errorMessage,  Position? currentPosition,  bool isInitializedWithExisting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationSelectionState() when $default != null:
return $default(_that.mode,_that.selectedLat,_that.selectedLng,_that.isLoadingLocation,_that.errorMessage,_that.currentPosition,_that.isInitializedWithExisting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocationSelectionMode mode,  double? selectedLat,  double? selectedLng,  bool isLoadingLocation,  String? errorMessage,  Position? currentPosition,  bool isInitializedWithExisting)  $default,) {final _that = this;
switch (_that) {
case _LocationSelectionState():
return $default(_that.mode,_that.selectedLat,_that.selectedLng,_that.isLoadingLocation,_that.errorMessage,_that.currentPosition,_that.isInitializedWithExisting);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocationSelectionMode mode,  double? selectedLat,  double? selectedLng,  bool isLoadingLocation,  String? errorMessage,  Position? currentPosition,  bool isInitializedWithExisting)?  $default,) {final _that = this;
switch (_that) {
case _LocationSelectionState() when $default != null:
return $default(_that.mode,_that.selectedLat,_that.selectedLng,_that.isLoadingLocation,_that.errorMessage,_that.currentPosition,_that.isInitializedWithExisting);case _:
  return null;

}
}

}

/// @nodoc


class _LocationSelectionState implements LocationSelectionState {
  const _LocationSelectionState({this.mode = LocationSelectionMode.currentLocation, this.selectedLat, this.selectedLng, this.isLoadingLocation = true, this.errorMessage, this.currentPosition, this.isInitializedWithExisting = false});
  

@override@JsonKey() final  LocationSelectionMode mode;
/// Nullable until GPS fetched or existing coordinates set
@override final  double? selectedLat;
@override final  double? selectedLng;
@override@JsonKey() final  bool isLoadingLocation;
@override final  String? errorMessage;
@override final  Position? currentPosition;
/// Tracks if initialized with existing address (update mode)
@override@JsonKey() final  bool isInitializedWithExisting;

/// Create a copy of LocationSelectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationSelectionStateCopyWith<_LocationSelectionState> get copyWith => __$LocationSelectionStateCopyWithImpl<_LocationSelectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationSelectionState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.selectedLat, selectedLat) || other.selectedLat == selectedLat)&&(identical(other.selectedLng, selectedLng) || other.selectedLng == selectedLng)&&(identical(other.isLoadingLocation, isLoadingLocation) || other.isLoadingLocation == isLoadingLocation)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.isInitializedWithExisting, isInitializedWithExisting) || other.isInitializedWithExisting == isInitializedWithExisting));
}


@override
int get hashCode => Object.hash(runtimeType,mode,selectedLat,selectedLng,isLoadingLocation,errorMessage,currentPosition,isInitializedWithExisting);

@override
String toString() {
  return 'LocationSelectionState(mode: $mode, selectedLat: $selectedLat, selectedLng: $selectedLng, isLoadingLocation: $isLoadingLocation, errorMessage: $errorMessage, currentPosition: $currentPosition, isInitializedWithExisting: $isInitializedWithExisting)';
}


}

/// @nodoc
abstract mixin class _$LocationSelectionStateCopyWith<$Res> implements $LocationSelectionStateCopyWith<$Res> {
  factory _$LocationSelectionStateCopyWith(_LocationSelectionState value, $Res Function(_LocationSelectionState) _then) = __$LocationSelectionStateCopyWithImpl;
@override @useResult
$Res call({
 LocationSelectionMode mode, double? selectedLat, double? selectedLng, bool isLoadingLocation, String? errorMessage, Position? currentPosition, bool isInitializedWithExisting
});




}
/// @nodoc
class __$LocationSelectionStateCopyWithImpl<$Res>
    implements _$LocationSelectionStateCopyWith<$Res> {
  __$LocationSelectionStateCopyWithImpl(this._self, this._then);

  final _LocationSelectionState _self;
  final $Res Function(_LocationSelectionState) _then;

/// Create a copy of LocationSelectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? selectedLat = freezed,Object? selectedLng = freezed,Object? isLoadingLocation = null,Object? errorMessage = freezed,Object? currentPosition = freezed,Object? isInitializedWithExisting = null,}) {
  return _then(_LocationSelectionState(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as LocationSelectionMode,selectedLat: freezed == selectedLat ? _self.selectedLat : selectedLat // ignore: cast_nullable_to_non_nullable
as double?,selectedLng: freezed == selectedLng ? _self.selectedLng : selectedLng // ignore: cast_nullable_to_non_nullable
as double?,isLoadingLocation: null == isLoadingLocation ? _self.isLoadingLocation : isLoadingLocation // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentPosition: freezed == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as Position?,isInitializedWithExisting: null == isInitializedWithExisting ? _self.isInitializedWithExisting : isInitializedWithExisting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
