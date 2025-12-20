// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Branch {

 int get id; String get name; ({double lat, double lng}) get location; String get address; bool get isActive; String get contactPhone; String get openingHour; String get closingHour; List<WorkingDay> get activeWorkingDays; DateTime get launchDate; DateTime get createdDate; DateTime get lastUpdateDate; int get createdBy;
/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchCopyWith<Branch> get copyWith => _$BranchCopyWithImpl<Branch>(this as Branch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.address, address) || other.address == address)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.openingHour, openingHour) || other.openingHour == openingHour)&&(identical(other.closingHour, closingHour) || other.closingHour == closingHour)&&const DeepCollectionEquality().equals(other.activeWorkingDays, activeWorkingDays)&&(identical(other.launchDate, launchDate) || other.launchDate == launchDate)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.lastUpdateDate, lastUpdateDate) || other.lastUpdateDate == lastUpdateDate)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,location,address,isActive,contactPhone,openingHour,closingHour,const DeepCollectionEquality().hash(activeWorkingDays),launchDate,createdDate,lastUpdateDate,createdBy);

@override
String toString() {
  return 'Branch(id: $id, name: $name, location: $location, address: $address, isActive: $isActive, contactPhone: $contactPhone, openingHour: $openingHour, closingHour: $closingHour, activeWorkingDays: $activeWorkingDays, launchDate: $launchDate, createdDate: $createdDate, lastUpdateDate: $lastUpdateDate, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $BranchCopyWith<$Res>  {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) _then) = _$BranchCopyWithImpl;
@useResult
$Res call({
 int id, String name, ({double lat, double lng}) location, String address, bool isActive, String contactPhone, String openingHour, String closingHour, List<WorkingDay> activeWorkingDays, DateTime launchDate, DateTime createdDate, DateTime lastUpdateDate, int createdBy
});




}
/// @nodoc
class _$BranchCopyWithImpl<$Res>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._self, this._then);

  final Branch _self;
  final $Res Function(Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? address = null,Object? isActive = null,Object? contactPhone = null,Object? openingHour = null,Object? closingHour = null,Object? activeWorkingDays = null,Object? launchDate = null,Object? createdDate = null,Object? lastUpdateDate = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ({double lat, double lng}),address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,contactPhone: null == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String,openingHour: null == openingHour ? _self.openingHour : openingHour // ignore: cast_nullable_to_non_nullable
as String,closingHour: null == closingHour ? _self.closingHour : closingHour // ignore: cast_nullable_to_non_nullable
as String,activeWorkingDays: null == activeWorkingDays ? _self.activeWorkingDays : activeWorkingDays // ignore: cast_nullable_to_non_nullable
as List<WorkingDay>,launchDate: null == launchDate ? _self.launchDate : launchDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdateDate: null == lastUpdateDate ? _self.lastUpdateDate : lastUpdateDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Branch].
extension BranchPatterns on Branch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Branch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Branch value)  $default,){
final _that = this;
switch (_that) {
case _Branch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Branch value)?  $default,){
final _that = this;
switch (_that) {
case _Branch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  ({double lat, double lng}) location,  String address,  bool isActive,  String contactPhone,  String openingHour,  String closingHour,  List<WorkingDay> activeWorkingDays,  DateTime launchDate,  DateTime createdDate,  DateTime lastUpdateDate,  int createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.address,_that.isActive,_that.contactPhone,_that.openingHour,_that.closingHour,_that.activeWorkingDays,_that.launchDate,_that.createdDate,_that.lastUpdateDate,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  ({double lat, double lng}) location,  String address,  bool isActive,  String contactPhone,  String openingHour,  String closingHour,  List<WorkingDay> activeWorkingDays,  DateTime launchDate,  DateTime createdDate,  DateTime lastUpdateDate,  int createdBy)  $default,) {final _that = this;
switch (_that) {
case _Branch():
return $default(_that.id,_that.name,_that.location,_that.address,_that.isActive,_that.contactPhone,_that.openingHour,_that.closingHour,_that.activeWorkingDays,_that.launchDate,_that.createdDate,_that.lastUpdateDate,_that.createdBy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  ({double lat, double lng}) location,  String address,  bool isActive,  String contactPhone,  String openingHour,  String closingHour,  List<WorkingDay> activeWorkingDays,  DateTime launchDate,  DateTime createdDate,  DateTime lastUpdateDate,  int createdBy)?  $default,) {final _that = this;
switch (_that) {
case _Branch() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.address,_that.isActive,_that.contactPhone,_that.openingHour,_that.closingHour,_that.activeWorkingDays,_that.launchDate,_that.createdDate,_that.lastUpdateDate,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc


class _Branch implements Branch {
  const _Branch({required this.id, required this.name, required this.location, required this.address, required this.isActive, required this.contactPhone, required this.openingHour, required this.closingHour, required final  List<WorkingDay> activeWorkingDays, required this.launchDate, required this.createdDate, required this.lastUpdateDate, required this.createdBy}): _activeWorkingDays = activeWorkingDays;
  

@override final  int id;
@override final  String name;
@override final  ({double lat, double lng}) location;
@override final  String address;
@override final  bool isActive;
@override final  String contactPhone;
@override final  String openingHour;
@override final  String closingHour;
 final  List<WorkingDay> _activeWorkingDays;
@override List<WorkingDay> get activeWorkingDays {
  if (_activeWorkingDays is EqualUnmodifiableListView) return _activeWorkingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeWorkingDays);
}

@override final  DateTime launchDate;
@override final  DateTime createdDate;
@override final  DateTime lastUpdateDate;
@override final  int createdBy;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchCopyWith<_Branch> get copyWith => __$BranchCopyWithImpl<_Branch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Branch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.address, address) || other.address == address)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.openingHour, openingHour) || other.openingHour == openingHour)&&(identical(other.closingHour, closingHour) || other.closingHour == closingHour)&&const DeepCollectionEquality().equals(other._activeWorkingDays, _activeWorkingDays)&&(identical(other.launchDate, launchDate) || other.launchDate == launchDate)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.lastUpdateDate, lastUpdateDate) || other.lastUpdateDate == lastUpdateDate)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,location,address,isActive,contactPhone,openingHour,closingHour,const DeepCollectionEquality().hash(_activeWorkingDays),launchDate,createdDate,lastUpdateDate,createdBy);

@override
String toString() {
  return 'Branch(id: $id, name: $name, location: $location, address: $address, isActive: $isActive, contactPhone: $contactPhone, openingHour: $openingHour, closingHour: $closingHour, activeWorkingDays: $activeWorkingDays, launchDate: $launchDate, createdDate: $createdDate, lastUpdateDate: $lastUpdateDate, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) _then) = __$BranchCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, ({double lat, double lng}) location, String address, bool isActive, String contactPhone, String openingHour, String closingHour, List<WorkingDay> activeWorkingDays, DateTime launchDate, DateTime createdDate, DateTime lastUpdateDate, int createdBy
});




}
/// @nodoc
class __$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(this._self, this._then);

  final _Branch _self;
  final $Res Function(_Branch) _then;

/// Create a copy of Branch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? address = null,Object? isActive = null,Object? contactPhone = null,Object? openingHour = null,Object? closingHour = null,Object? activeWorkingDays = null,Object? launchDate = null,Object? createdDate = null,Object? lastUpdateDate = null,Object? createdBy = null,}) {
  return _then(_Branch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ({double lat, double lng}),address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,contactPhone: null == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String,openingHour: null == openingHour ? _self.openingHour : openingHour // ignore: cast_nullable_to_non_nullable
as String,closingHour: null == closingHour ? _self.closingHour : closingHour // ignore: cast_nullable_to_non_nullable
as String,activeWorkingDays: null == activeWorkingDays ? _self._activeWorkingDays : activeWorkingDays // ignore: cast_nullable_to_non_nullable
as List<WorkingDay>,launchDate: null == launchDate ? _self.launchDate : launchDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdateDate: null == lastUpdateDate ? _self.lastUpdateDate : lastUpdateDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
