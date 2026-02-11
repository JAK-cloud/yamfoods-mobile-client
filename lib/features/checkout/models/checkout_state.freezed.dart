// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutState {

 int get branchId; String get orderType;// "pickup" | "delivery"
 Address? get selectedAddress;// null for pickup
 String? get promoCode; double? get promoCodeDiscount;// Changed from String to double
 int? get pointUsed;// Renamed from points for consistency
 double? get pointDiscount; DateTime? get scheduledAt; String? get note; String? get paymentMethod;
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutStateCopyWith<CheckoutState> get copyWith => _$CheckoutStateCopyWithImpl<CheckoutState>(this as CheckoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutState&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,orderType,selectedAddress,promoCode,promoCodeDiscount,pointUsed,pointDiscount,scheduledAt,note,paymentMethod);

@override
String toString() {
  return 'CheckoutState(branchId: $branchId, orderType: $orderType, selectedAddress: $selectedAddress, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, pointUsed: $pointUsed, pointDiscount: $pointDiscount, scheduledAt: $scheduledAt, note: $note, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $CheckoutStateCopyWith<$Res>  {
  factory $CheckoutStateCopyWith(CheckoutState value, $Res Function(CheckoutState) _then) = _$CheckoutStateCopyWithImpl;
@useResult
$Res call({
 int branchId, String orderType, Address? selectedAddress, String? promoCode, double? promoCodeDiscount, int? pointUsed, double? pointDiscount, DateTime? scheduledAt, String? note, String? paymentMethod
});


$AddressCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._self, this._then);

  final CheckoutState _self;
  final $Res Function(CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = null,Object? orderType = null,Object? selectedAddress = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? scheduledAt = freezed,Object? note = freezed,Object? paymentMethod = freezed,}) {
  return _then(_self.copyWith(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as Address?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoCodeDiscount: freezed == promoCodeDiscount ? _self.promoCodeDiscount : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
as double?,pointUsed: freezed == pointUsed ? _self.pointUsed : pointUsed // ignore: cast_nullable_to_non_nullable
as int?,pointDiscount: freezed == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double?,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutState].
extension CheckoutStatePatterns on CheckoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutState value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int branchId,  String orderType,  Address? selectedAddress,  String? promoCode,  double? promoCodeDiscount,  int? pointUsed,  double? pointDiscount,  DateTime? scheduledAt,  String? note,  String? paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.branchId,_that.orderType,_that.selectedAddress,_that.promoCode,_that.promoCodeDiscount,_that.pointUsed,_that.pointDiscount,_that.scheduledAt,_that.note,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int branchId,  String orderType,  Address? selectedAddress,  String? promoCode,  double? promoCodeDiscount,  int? pointUsed,  double? pointDiscount,  DateTime? scheduledAt,  String? note,  String? paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _CheckoutState():
return $default(_that.branchId,_that.orderType,_that.selectedAddress,_that.promoCode,_that.promoCodeDiscount,_that.pointUsed,_that.pointDiscount,_that.scheduledAt,_that.note,_that.paymentMethod);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int branchId,  String orderType,  Address? selectedAddress,  String? promoCode,  double? promoCodeDiscount,  int? pointUsed,  double? pointDiscount,  DateTime? scheduledAt,  String? note,  String? paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.branchId,_that.orderType,_that.selectedAddress,_that.promoCode,_that.promoCodeDiscount,_that.pointUsed,_that.pointDiscount,_that.scheduledAt,_that.note,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutState implements CheckoutState {
  const _CheckoutState({required this.branchId, required this.orderType, this.selectedAddress, this.promoCode, this.promoCodeDiscount, this.pointUsed, this.pointDiscount, this.scheduledAt, this.note, this.paymentMethod});
  

@override final  int branchId;
@override final  String orderType;
// "pickup" | "delivery"
@override final  Address? selectedAddress;
// null for pickup
@override final  String? promoCode;
@override final  double? promoCodeDiscount;
// Changed from String to double
@override final  int? pointUsed;
// Renamed from points for consistency
@override final  double? pointDiscount;
@override final  DateTime? scheduledAt;
@override final  String? note;
@override final  String? paymentMethod;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutStateCopyWith<_CheckoutState> get copyWith => __$CheckoutStateCopyWithImpl<_CheckoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutState&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,orderType,selectedAddress,promoCode,promoCodeDiscount,pointUsed,pointDiscount,scheduledAt,note,paymentMethod);

@override
String toString() {
  return 'CheckoutState(branchId: $branchId, orderType: $orderType, selectedAddress: $selectedAddress, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, pointUsed: $pointUsed, pointDiscount: $pointDiscount, scheduledAt: $scheduledAt, note: $note, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$CheckoutStateCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory _$CheckoutStateCopyWith(_CheckoutState value, $Res Function(_CheckoutState) _then) = __$CheckoutStateCopyWithImpl;
@override @useResult
$Res call({
 int branchId, String orderType, Address? selectedAddress, String? promoCode, double? promoCodeDiscount, int? pointUsed, double? pointDiscount, DateTime? scheduledAt, String? note, String? paymentMethod
});


@override $AddressCopyWith<$Res>? get selectedAddress;

}
/// @nodoc
class __$CheckoutStateCopyWithImpl<$Res>
    implements _$CheckoutStateCopyWith<$Res> {
  __$CheckoutStateCopyWithImpl(this._self, this._then);

  final _CheckoutState _self;
  final $Res Function(_CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? orderType = null,Object? selectedAddress = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? scheduledAt = freezed,Object? note = freezed,Object? paymentMethod = freezed,}) {
  return _then(_CheckoutState(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as Address?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoCodeDiscount: freezed == promoCodeDiscount ? _self.promoCodeDiscount : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
as double?,pointUsed: freezed == pointUsed ? _self.pointUsed : pointUsed // ignore: cast_nullable_to_non_nullable
as int?,pointDiscount: freezed == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double?,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}
}

// dart format on
