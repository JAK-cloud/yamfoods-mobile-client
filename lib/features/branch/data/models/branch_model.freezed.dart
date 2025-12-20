// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchModel {

 int get id; String get name; String get location;// Will be parsed in mapper
 String get address;@JsonKey(name: 'isActive') int get isActive;// API returns 1/0
@JsonKey(name: 'contactPhone') String get contactPhone;@JsonKey(name: 'openingHour') String get openingHour;@JsonKey(name: 'closingHour') String get closingHour;@JsonKey(name: 'activeWorkingDays') List<WorkingDayModel> get activeWorkingDays;@JsonKey(name: 'launchDate') DateTime get launchDate;@JsonKey(name: 'createdDate') DateTime get createdDate;@JsonKey(name: 'lastUpdateDate') DateTime get lastUpdateDate;@JsonKey(name: 'createdBy') int get createdBy;
/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchModelCopyWith<BranchModel> get copyWith => _$BranchModelCopyWithImpl<BranchModel>(this as BranchModel, _$identity);

  /// Serializes this BranchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.address, address) || other.address == address)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.openingHour, openingHour) || other.openingHour == openingHour)&&(identical(other.closingHour, closingHour) || other.closingHour == closingHour)&&const DeepCollectionEquality().equals(other.activeWorkingDays, activeWorkingDays)&&(identical(other.launchDate, launchDate) || other.launchDate == launchDate)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.lastUpdateDate, lastUpdateDate) || other.lastUpdateDate == lastUpdateDate)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,address,isActive,contactPhone,openingHour,closingHour,const DeepCollectionEquality().hash(activeWorkingDays),launchDate,createdDate,lastUpdateDate,createdBy);

@override
String toString() {
  return 'BranchModel(id: $id, name: $name, location: $location, address: $address, isActive: $isActive, contactPhone: $contactPhone, openingHour: $openingHour, closingHour: $closingHour, activeWorkingDays: $activeWorkingDays, launchDate: $launchDate, createdDate: $createdDate, lastUpdateDate: $lastUpdateDate, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $BranchModelCopyWith<$Res>  {
  factory $BranchModelCopyWith(BranchModel value, $Res Function(BranchModel) _then) = _$BranchModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String location, String address,@JsonKey(name: 'isActive') int isActive,@JsonKey(name: 'contactPhone') String contactPhone,@JsonKey(name: 'openingHour') String openingHour,@JsonKey(name: 'closingHour') String closingHour,@JsonKey(name: 'activeWorkingDays') List<WorkingDayModel> activeWorkingDays,@JsonKey(name: 'launchDate') DateTime launchDate,@JsonKey(name: 'createdDate') DateTime createdDate,@JsonKey(name: 'lastUpdateDate') DateTime lastUpdateDate,@JsonKey(name: 'createdBy') int createdBy
});




}
/// @nodoc
class _$BranchModelCopyWithImpl<$Res>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._self, this._then);

  final BranchModel _self;
  final $Res Function(BranchModel) _then;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? address = null,Object? isActive = null,Object? contactPhone = null,Object? openingHour = null,Object? closingHour = null,Object? activeWorkingDays = null,Object? launchDate = null,Object? createdDate = null,Object? lastUpdateDate = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,contactPhone: null == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String,openingHour: null == openingHour ? _self.openingHour : openingHour // ignore: cast_nullable_to_non_nullable
as String,closingHour: null == closingHour ? _self.closingHour : closingHour // ignore: cast_nullable_to_non_nullable
as String,activeWorkingDays: null == activeWorkingDays ? _self.activeWorkingDays : activeWorkingDays // ignore: cast_nullable_to_non_nullable
as List<WorkingDayModel>,launchDate: null == launchDate ? _self.launchDate : launchDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdateDate: null == lastUpdateDate ? _self.lastUpdateDate : lastUpdateDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchModel].
extension BranchModelPatterns on BranchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchModel value)  $default,){
final _that = this;
switch (_that) {
case _BranchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchModel value)?  $default,){
final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String location,  String address, @JsonKey(name: 'isActive')  int isActive, @JsonKey(name: 'contactPhone')  String contactPhone, @JsonKey(name: 'openingHour')  String openingHour, @JsonKey(name: 'closingHour')  String closingHour, @JsonKey(name: 'activeWorkingDays')  List<WorkingDayModel> activeWorkingDays, @JsonKey(name: 'launchDate')  DateTime launchDate, @JsonKey(name: 'createdDate')  DateTime createdDate, @JsonKey(name: 'lastUpdateDate')  DateTime lastUpdateDate, @JsonKey(name: 'createdBy')  int createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String location,  String address, @JsonKey(name: 'isActive')  int isActive, @JsonKey(name: 'contactPhone')  String contactPhone, @JsonKey(name: 'openingHour')  String openingHour, @JsonKey(name: 'closingHour')  String closingHour, @JsonKey(name: 'activeWorkingDays')  List<WorkingDayModel> activeWorkingDays, @JsonKey(name: 'launchDate')  DateTime launchDate, @JsonKey(name: 'createdDate')  DateTime createdDate, @JsonKey(name: 'lastUpdateDate')  DateTime lastUpdateDate, @JsonKey(name: 'createdBy')  int createdBy)  $default,) {final _that = this;
switch (_that) {
case _BranchModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String location,  String address, @JsonKey(name: 'isActive')  int isActive, @JsonKey(name: 'contactPhone')  String contactPhone, @JsonKey(name: 'openingHour')  String openingHour, @JsonKey(name: 'closingHour')  String closingHour, @JsonKey(name: 'activeWorkingDays')  List<WorkingDayModel> activeWorkingDays, @JsonKey(name: 'launchDate')  DateTime launchDate, @JsonKey(name: 'createdDate')  DateTime createdDate, @JsonKey(name: 'lastUpdateDate')  DateTime lastUpdateDate, @JsonKey(name: 'createdBy')  int createdBy)?  $default,) {final _that = this;
switch (_that) {
case _BranchModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.address,_that.isActive,_that.contactPhone,_that.openingHour,_that.closingHour,_that.activeWorkingDays,_that.launchDate,_that.createdDate,_that.lastUpdateDate,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchModel implements BranchModel {
  const _BranchModel({required this.id, required this.name, required this.location, required this.address, @JsonKey(name: 'isActive') required this.isActive, @JsonKey(name: 'contactPhone') required this.contactPhone, @JsonKey(name: 'openingHour') required this.openingHour, @JsonKey(name: 'closingHour') required this.closingHour, @JsonKey(name: 'activeWorkingDays') required final  List<WorkingDayModel> activeWorkingDays, @JsonKey(name: 'launchDate') required this.launchDate, @JsonKey(name: 'createdDate') required this.createdDate, @JsonKey(name: 'lastUpdateDate') required this.lastUpdateDate, @JsonKey(name: 'createdBy') required this.createdBy}): _activeWorkingDays = activeWorkingDays;
  factory _BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String location;
// Will be parsed in mapper
@override final  String address;
@override@JsonKey(name: 'isActive') final  int isActive;
// API returns 1/0
@override@JsonKey(name: 'contactPhone') final  String contactPhone;
@override@JsonKey(name: 'openingHour') final  String openingHour;
@override@JsonKey(name: 'closingHour') final  String closingHour;
 final  List<WorkingDayModel> _activeWorkingDays;
@override@JsonKey(name: 'activeWorkingDays') List<WorkingDayModel> get activeWorkingDays {
  if (_activeWorkingDays is EqualUnmodifiableListView) return _activeWorkingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeWorkingDays);
}

@override@JsonKey(name: 'launchDate') final  DateTime launchDate;
@override@JsonKey(name: 'createdDate') final  DateTime createdDate;
@override@JsonKey(name: 'lastUpdateDate') final  DateTime lastUpdateDate;
@override@JsonKey(name: 'createdBy') final  int createdBy;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchModelCopyWith<_BranchModel> get copyWith => __$BranchModelCopyWithImpl<_BranchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.address, address) || other.address == address)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.openingHour, openingHour) || other.openingHour == openingHour)&&(identical(other.closingHour, closingHour) || other.closingHour == closingHour)&&const DeepCollectionEquality().equals(other._activeWorkingDays, _activeWorkingDays)&&(identical(other.launchDate, launchDate) || other.launchDate == launchDate)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.lastUpdateDate, lastUpdateDate) || other.lastUpdateDate == lastUpdateDate)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,address,isActive,contactPhone,openingHour,closingHour,const DeepCollectionEquality().hash(_activeWorkingDays),launchDate,createdDate,lastUpdateDate,createdBy);

@override
String toString() {
  return 'BranchModel(id: $id, name: $name, location: $location, address: $address, isActive: $isActive, contactPhone: $contactPhone, openingHour: $openingHour, closingHour: $closingHour, activeWorkingDays: $activeWorkingDays, launchDate: $launchDate, createdDate: $createdDate, lastUpdateDate: $lastUpdateDate, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$BranchModelCopyWith<$Res> implements $BranchModelCopyWith<$Res> {
  factory _$BranchModelCopyWith(_BranchModel value, $Res Function(_BranchModel) _then) = __$BranchModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String location, String address,@JsonKey(name: 'isActive') int isActive,@JsonKey(name: 'contactPhone') String contactPhone,@JsonKey(name: 'openingHour') String openingHour,@JsonKey(name: 'closingHour') String closingHour,@JsonKey(name: 'activeWorkingDays') List<WorkingDayModel> activeWorkingDays,@JsonKey(name: 'launchDate') DateTime launchDate,@JsonKey(name: 'createdDate') DateTime createdDate,@JsonKey(name: 'lastUpdateDate') DateTime lastUpdateDate,@JsonKey(name: 'createdBy') int createdBy
});




}
/// @nodoc
class __$BranchModelCopyWithImpl<$Res>
    implements _$BranchModelCopyWith<$Res> {
  __$BranchModelCopyWithImpl(this._self, this._then);

  final _BranchModel _self;
  final $Res Function(_BranchModel) _then;

/// Create a copy of BranchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? address = null,Object? isActive = null,Object? contactPhone = null,Object? openingHour = null,Object? closingHour = null,Object? activeWorkingDays = null,Object? launchDate = null,Object? createdDate = null,Object? lastUpdateDate = null,Object? createdBy = null,}) {
  return _then(_BranchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,contactPhone: null == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String,openingHour: null == openingHour ? _self.openingHour : openingHour // ignore: cast_nullable_to_non_nullable
as String,closingHour: null == closingHour ? _self.closingHour : closingHour // ignore: cast_nullable_to_non_nullable
as String,activeWorkingDays: null == activeWorkingDays ? _self._activeWorkingDays : activeWorkingDays // ignore: cast_nullable_to_non_nullable
as List<WorkingDayModel>,launchDate: null == launchDate ? _self.launchDate : launchDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdateDate: null == lastUpdateDate ? _self.lastUpdateDate : lastUpdateDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
