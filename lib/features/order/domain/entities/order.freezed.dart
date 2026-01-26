// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Orderr {

 int get id; int? get userId;//this field is not needed but it does not affect
 String get userPhone; int get branchId; String get qrCode; String get status; String get type; int? get delivererId;// here it is nullable because this order class intended for customer not for deliverer. for deliverer it should be required, there value is known after the order is assigned to a deliverer
 String? get delivererPhone; DateTime? get scheduledAt; String? get note; int get quantity; double get subtotal; double? get vatTotal; double get deliveryFee; int? get pointUsed; double? get pointDiscount; String? get promoCode; double? get promoCodeDiscount; double? get discountTotal; double get totalAmount; OrderLocation get branchLocation; OrderLocation get deliveryLocation; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderrCopyWith<Orderr> get copyWith => _$OrderrCopyWithImpl<Orderr>(this as Orderr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Orderr&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userPhone, userPhone) || other.userPhone == userPhone)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.delivererId, delivererId) || other.delivererId == delivererId)&&(identical(other.delivererPhone, delivererPhone) || other.delivererPhone == delivererPhone)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.branchLocation, branchLocation) || other.branchLocation == branchLocation)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userPhone,branchId,qrCode,status,type,delivererId,delivererPhone,scheduledAt,note,quantity,subtotal,vatTotal,deliveryFee,pointUsed,pointDiscount,promoCode,promoCodeDiscount,discountTotal,totalAmount,branchLocation,deliveryLocation,createdAt,updatedAt]);

@override
String toString() {
  return 'Orderr(id: $id, userId: $userId, userPhone: $userPhone, branchId: $branchId, qrCode: $qrCode, status: $status, type: $type, delivererId: $delivererId, delivererPhone: $delivererPhone, scheduledAt: $scheduledAt, note: $note, quantity: $quantity, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, pointUsed: $pointUsed, pointDiscount: $pointDiscount, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, discountTotal: $discountTotal, totalAmount: $totalAmount, branchLocation: $branchLocation, deliveryLocation: $deliveryLocation, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderrCopyWith<$Res>  {
  factory $OrderrCopyWith(Orderr value, $Res Function(Orderr) _then) = _$OrderrCopyWithImpl;
@useResult
$Res call({
 int id, int? userId, String userPhone, int branchId, String qrCode, String status, String type, int? delivererId, String? delivererPhone, DateTime? scheduledAt, String? note, int quantity, double subtotal, double? vatTotal, double deliveryFee, int? pointUsed, double? pointDiscount, String? promoCode, double? promoCodeDiscount, double? discountTotal, double totalAmount, OrderLocation branchLocation, OrderLocation deliveryLocation, DateTime createdAt, DateTime updatedAt
});


$OrderLocationCopyWith<$Res> get branchLocation;$OrderLocationCopyWith<$Res> get deliveryLocation;

}
/// @nodoc
class _$OrderrCopyWithImpl<$Res>
    implements $OrderrCopyWith<$Res> {
  _$OrderrCopyWithImpl(this._self, this._then);

  final Orderr _self;
  final $Res Function(Orderr) _then;

/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? userPhone = null,Object? branchId = null,Object? qrCode = null,Object? status = null,Object? type = null,Object? delivererId = freezed,Object? delivererPhone = freezed,Object? scheduledAt = freezed,Object? note = freezed,Object? quantity = null,Object? subtotal = null,Object? vatTotal = freezed,Object? deliveryFee = null,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? discountTotal = freezed,Object? totalAmount = null,Object? branchLocation = null,Object? deliveryLocation = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,userPhone: null == userPhone ? _self.userPhone : userPhone // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,delivererId: freezed == delivererId ? _self.delivererId : delivererId // ignore: cast_nullable_to_non_nullable
as int?,delivererPhone: freezed == delivererPhone ? _self.delivererPhone : delivererPhone // ignore: cast_nullable_to_non_nullable
as String?,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,vatTotal: freezed == vatTotal ? _self.vatTotal : vatTotal // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,pointUsed: freezed == pointUsed ? _self.pointUsed : pointUsed // ignore: cast_nullable_to_non_nullable
as int?,pointDiscount: freezed == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoCodeDiscount: freezed == promoCodeDiscount ? _self.promoCodeDiscount : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
as double?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as double?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,branchLocation: null == branchLocation ? _self.branchLocation : branchLocation // ignore: cast_nullable_to_non_nullable
as OrderLocation,deliveryLocation: null == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as OrderLocation,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get branchLocation {
  
  return $OrderLocationCopyWith<$Res>(_self.branchLocation, (value) {
    return _then(_self.copyWith(branchLocation: value));
  });
}/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get deliveryLocation {
  
  return $OrderLocationCopyWith<$Res>(_self.deliveryLocation, (value) {
    return _then(_self.copyWith(deliveryLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Orderr].
extension OrderrPatterns on Orderr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Orderr value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Orderr() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Orderr value)  $default,){
final _that = this;
switch (_that) {
case _Orderr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Orderr value)?  $default,){
final _that = this;
switch (_that) {
case _Orderr() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? userId,  String userPhone,  int branchId,  String qrCode,  String status,  String type,  int? delivererId,  String? delivererPhone,  DateTime? scheduledAt,  String? note,  int quantity,  double subtotal,  double? vatTotal,  double deliveryFee,  int? pointUsed,  double? pointDiscount,  String? promoCode,  double? promoCodeDiscount,  double? discountTotal,  double totalAmount,  OrderLocation branchLocation,  OrderLocation deliveryLocation,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Orderr() when $default != null:
return $default(_that.id,_that.userId,_that.userPhone,_that.branchId,_that.qrCode,_that.status,_that.type,_that.delivererId,_that.delivererPhone,_that.scheduledAt,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.discountTotal,_that.totalAmount,_that.branchLocation,_that.deliveryLocation,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? userId,  String userPhone,  int branchId,  String qrCode,  String status,  String type,  int? delivererId,  String? delivererPhone,  DateTime? scheduledAt,  String? note,  int quantity,  double subtotal,  double? vatTotal,  double deliveryFee,  int? pointUsed,  double? pointDiscount,  String? promoCode,  double? promoCodeDiscount,  double? discountTotal,  double totalAmount,  OrderLocation branchLocation,  OrderLocation deliveryLocation,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Orderr():
return $default(_that.id,_that.userId,_that.userPhone,_that.branchId,_that.qrCode,_that.status,_that.type,_that.delivererId,_that.delivererPhone,_that.scheduledAt,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.discountTotal,_that.totalAmount,_that.branchLocation,_that.deliveryLocation,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? userId,  String userPhone,  int branchId,  String qrCode,  String status,  String type,  int? delivererId,  String? delivererPhone,  DateTime? scheduledAt,  String? note,  int quantity,  double subtotal,  double? vatTotal,  double deliveryFee,  int? pointUsed,  double? pointDiscount,  String? promoCode,  double? promoCodeDiscount,  double? discountTotal,  double totalAmount,  OrderLocation branchLocation,  OrderLocation deliveryLocation,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Orderr() when $default != null:
return $default(_that.id,_that.userId,_that.userPhone,_that.branchId,_that.qrCode,_that.status,_that.type,_that.delivererId,_that.delivererPhone,_that.scheduledAt,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.discountTotal,_that.totalAmount,_that.branchLocation,_that.deliveryLocation,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Orderr implements Orderr {
  const _Orderr({required this.id, this.userId, required this.userPhone, required this.branchId, required this.qrCode, required this.status, required this.type, this.delivererId, this.delivererPhone, this.scheduledAt, this.note, required this.quantity, required this.subtotal, this.vatTotal, required this.deliveryFee, this.pointUsed, this.pointDiscount, this.promoCode, this.promoCodeDiscount, this.discountTotal, required this.totalAmount, required this.branchLocation, required this.deliveryLocation, required this.createdAt, required this.updatedAt});
  

@override final  int id;
@override final  int? userId;
//this field is not needed but it does not affect
@override final  String userPhone;
@override final  int branchId;
@override final  String qrCode;
@override final  String status;
@override final  String type;
@override final  int? delivererId;
// here it is nullable because this order class intended for customer not for deliverer. for deliverer it should be required, there value is known after the order is assigned to a deliverer
@override final  String? delivererPhone;
@override final  DateTime? scheduledAt;
@override final  String? note;
@override final  int quantity;
@override final  double subtotal;
@override final  double? vatTotal;
@override final  double deliveryFee;
@override final  int? pointUsed;
@override final  double? pointDiscount;
@override final  String? promoCode;
@override final  double? promoCodeDiscount;
@override final  double? discountTotal;
@override final  double totalAmount;
@override final  OrderLocation branchLocation;
@override final  OrderLocation deliveryLocation;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderrCopyWith<_Orderr> get copyWith => __$OrderrCopyWithImpl<_Orderr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Orderr&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userPhone, userPhone) || other.userPhone == userPhone)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.delivererId, delivererId) || other.delivererId == delivererId)&&(identical(other.delivererPhone, delivererPhone) || other.delivererPhone == delivererPhone)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.branchLocation, branchLocation) || other.branchLocation == branchLocation)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userPhone,branchId,qrCode,status,type,delivererId,delivererPhone,scheduledAt,note,quantity,subtotal,vatTotal,deliveryFee,pointUsed,pointDiscount,promoCode,promoCodeDiscount,discountTotal,totalAmount,branchLocation,deliveryLocation,createdAt,updatedAt]);

@override
String toString() {
  return 'Orderr(id: $id, userId: $userId, userPhone: $userPhone, branchId: $branchId, qrCode: $qrCode, status: $status, type: $type, delivererId: $delivererId, delivererPhone: $delivererPhone, scheduledAt: $scheduledAt, note: $note, quantity: $quantity, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, pointUsed: $pointUsed, pointDiscount: $pointDiscount, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, discountTotal: $discountTotal, totalAmount: $totalAmount, branchLocation: $branchLocation, deliveryLocation: $deliveryLocation, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderrCopyWith<$Res> implements $OrderrCopyWith<$Res> {
  factory _$OrderrCopyWith(_Orderr value, $Res Function(_Orderr) _then) = __$OrderrCopyWithImpl;
@override @useResult
$Res call({
 int id, int? userId, String userPhone, int branchId, String qrCode, String status, String type, int? delivererId, String? delivererPhone, DateTime? scheduledAt, String? note, int quantity, double subtotal, double? vatTotal, double deliveryFee, int? pointUsed, double? pointDiscount, String? promoCode, double? promoCodeDiscount, double? discountTotal, double totalAmount, OrderLocation branchLocation, OrderLocation deliveryLocation, DateTime createdAt, DateTime updatedAt
});


@override $OrderLocationCopyWith<$Res> get branchLocation;@override $OrderLocationCopyWith<$Res> get deliveryLocation;

}
/// @nodoc
class __$OrderrCopyWithImpl<$Res>
    implements _$OrderrCopyWith<$Res> {
  __$OrderrCopyWithImpl(this._self, this._then);

  final _Orderr _self;
  final $Res Function(_Orderr) _then;

/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? userPhone = null,Object? branchId = null,Object? qrCode = null,Object? status = null,Object? type = null,Object? delivererId = freezed,Object? delivererPhone = freezed,Object? scheduledAt = freezed,Object? note = freezed,Object? quantity = null,Object? subtotal = null,Object? vatTotal = freezed,Object? deliveryFee = null,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? discountTotal = freezed,Object? totalAmount = null,Object? branchLocation = null,Object? deliveryLocation = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Orderr(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,userPhone: null == userPhone ? _self.userPhone : userPhone // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,delivererId: freezed == delivererId ? _self.delivererId : delivererId // ignore: cast_nullable_to_non_nullable
as int?,delivererPhone: freezed == delivererPhone ? _self.delivererPhone : delivererPhone // ignore: cast_nullable_to_non_nullable
as String?,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,vatTotal: freezed == vatTotal ? _self.vatTotal : vatTotal // ignore: cast_nullable_to_non_nullable
as double?,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,pointUsed: freezed == pointUsed ? _self.pointUsed : pointUsed // ignore: cast_nullable_to_non_nullable
as int?,pointDiscount: freezed == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoCodeDiscount: freezed == promoCodeDiscount ? _self.promoCodeDiscount : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
as double?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as double?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,branchLocation: null == branchLocation ? _self.branchLocation : branchLocation // ignore: cast_nullable_to_non_nullable
as OrderLocation,deliveryLocation: null == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as OrderLocation,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get branchLocation {
  
  return $OrderLocationCopyWith<$Res>(_self.branchLocation, (value) {
    return _then(_self.copyWith(branchLocation: value));
  });
}/// Create a copy of Orderr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get deliveryLocation {
  
  return $OrderLocationCopyWith<$Res>(_self.deliveryLocation, (value) {
    return _then(_self.copyWith(deliveryLocation: value));
  });
}
}

// dart format on
