// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderRequestData {

 int get branchId; int? get deliveryAddressId;// only required if order type is delivery
 String get orderType;// "delivery" or "pickup"
 DateTime? get scheduledAt; String get method;// payment method like "telebirr"
 String? get note; int get quantity; double get subtotal; double get vatTotal; double get deliveryFee; double get discountTotal; double get totalAmount; double? get transactionFee;// Chapa 2.5% fee when payment method is chapa
 int? get pointUsed; double? get pointDiscount; String? get promoCode; double? get promoCodeDiscount; double? get distanceKm;
/// Create a copy of OrderRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderRequestDataCopyWith<OrderRequestData> get copyWith => _$OrderRequestDataCopyWithImpl<OrderRequestData>(this as OrderRequestData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderRequestData&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.note, note) || other.note == note)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,deliveryAddressId,orderType,scheduledAt,method,note,quantity,subtotal,vatTotal,deliveryFee,discountTotal,totalAmount,transactionFee,pointUsed,pointDiscount,promoCode,promoCodeDiscount,distanceKm);

@override
String toString() {
  return 'OrderRequestData(branchId: $branchId, deliveryAddressId: $deliveryAddressId, orderType: $orderType, scheduledAt: $scheduledAt, method: $method, note: $note, quantity: $quantity, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, totalAmount: $totalAmount, transactionFee: $transactionFee, pointUsed: $pointUsed, pointDiscount: $pointDiscount, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class $OrderRequestDataCopyWith<$Res>  {
  factory $OrderRequestDataCopyWith(OrderRequestData value, $Res Function(OrderRequestData) _then) = _$OrderRequestDataCopyWithImpl;
@useResult
$Res call({
 int branchId, int? deliveryAddressId, String orderType, DateTime? scheduledAt, String method, String? note, int quantity, double subtotal, double vatTotal, double deliveryFee, double discountTotal, double totalAmount, double? transactionFee, int? pointUsed, double? pointDiscount, String? promoCode, double? promoCodeDiscount, double? distanceKm
});




}
/// @nodoc
class _$OrderRequestDataCopyWithImpl<$Res>
    implements $OrderRequestDataCopyWith<$Res> {
  _$OrderRequestDataCopyWithImpl(this._self, this._then);

  final OrderRequestData _self;
  final $Res Function(OrderRequestData) _then;

/// Create a copy of OrderRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = null,Object? deliveryAddressId = freezed,Object? orderType = null,Object? scheduledAt = freezed,Object? method = null,Object? note = freezed,Object? quantity = null,Object? subtotal = null,Object? vatTotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? totalAmount = null,Object? transactionFee = freezed,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? distanceKm = freezed,}) {
  return _then(_self.copyWith(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,deliveryAddressId: freezed == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,vatTotal: null == vatTotal ? _self.vatTotal : vatTotal // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,transactionFee: freezed == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as double?,pointUsed: freezed == pointUsed ? _self.pointUsed : pointUsed // ignore: cast_nullable_to_non_nullable
as int?,pointDiscount: freezed == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoCodeDiscount: freezed == promoCodeDiscount ? _self.promoCodeDiscount : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
as double?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderRequestData].
extension OrderRequestDataPatterns on OrderRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderRequestData value)  $default,){
final _that = this;
switch (_that) {
case _OrderRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _OrderRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int branchId,  int? deliveryAddressId,  String orderType,  DateTime? scheduledAt,  String method,  String? note,  int quantity,  double subtotal,  double vatTotal,  double deliveryFee,  double discountTotal,  double totalAmount,  double? transactionFee,  int? pointUsed,  double? pointDiscount,  String? promoCode,  double? promoCodeDiscount,  double? distanceKm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderRequestData() when $default != null:
return $default(_that.branchId,_that.deliveryAddressId,_that.orderType,_that.scheduledAt,_that.method,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.discountTotal,_that.totalAmount,_that.transactionFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.distanceKm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int branchId,  int? deliveryAddressId,  String orderType,  DateTime? scheduledAt,  String method,  String? note,  int quantity,  double subtotal,  double vatTotal,  double deliveryFee,  double discountTotal,  double totalAmount,  double? transactionFee,  int? pointUsed,  double? pointDiscount,  String? promoCode,  double? promoCodeDiscount,  double? distanceKm)  $default,) {final _that = this;
switch (_that) {
case _OrderRequestData():
return $default(_that.branchId,_that.deliveryAddressId,_that.orderType,_that.scheduledAt,_that.method,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.discountTotal,_that.totalAmount,_that.transactionFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.distanceKm);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int branchId,  int? deliveryAddressId,  String orderType,  DateTime? scheduledAt,  String method,  String? note,  int quantity,  double subtotal,  double vatTotal,  double deliveryFee,  double discountTotal,  double totalAmount,  double? transactionFee,  int? pointUsed,  double? pointDiscount,  String? promoCode,  double? promoCodeDiscount,  double? distanceKm)?  $default,) {final _that = this;
switch (_that) {
case _OrderRequestData() when $default != null:
return $default(_that.branchId,_that.deliveryAddressId,_that.orderType,_that.scheduledAt,_that.method,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.discountTotal,_that.totalAmount,_that.transactionFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.distanceKm);case _:
  return null;

}
}

}

/// @nodoc


class _OrderRequestData implements OrderRequestData {
  const _OrderRequestData({required this.branchId, this.deliveryAddressId, required this.orderType, this.scheduledAt, required this.method, this.note, required this.quantity, required this.subtotal, required this.vatTotal, required this.deliveryFee, required this.discountTotal, required this.totalAmount, this.transactionFee, this.pointUsed, this.pointDiscount, this.promoCode, this.promoCodeDiscount, this.distanceKm});
  

@override final  int branchId;
@override final  int? deliveryAddressId;
// only required if order type is delivery
@override final  String orderType;
// "delivery" or "pickup"
@override final  DateTime? scheduledAt;
@override final  String method;
// payment method like "telebirr"
@override final  String? note;
@override final  int quantity;
@override final  double subtotal;
@override final  double vatTotal;
@override final  double deliveryFee;
@override final  double discountTotal;
@override final  double totalAmount;
@override final  double? transactionFee;
// Chapa 2.5% fee when payment method is chapa
@override final  int? pointUsed;
@override final  double? pointDiscount;
@override final  String? promoCode;
@override final  double? promoCodeDiscount;
@override final  double? distanceKm;

/// Create a copy of OrderRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderRequestDataCopyWith<_OrderRequestData> get copyWith => __$OrderRequestDataCopyWithImpl<_OrderRequestData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderRequestData&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.deliveryAddressId, deliveryAddressId) || other.deliveryAddressId == deliveryAddressId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.note, note) || other.note == note)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,deliveryAddressId,orderType,scheduledAt,method,note,quantity,subtotal,vatTotal,deliveryFee,discountTotal,totalAmount,transactionFee,pointUsed,pointDiscount,promoCode,promoCodeDiscount,distanceKm);

@override
String toString() {
  return 'OrderRequestData(branchId: $branchId, deliveryAddressId: $deliveryAddressId, orderType: $orderType, scheduledAt: $scheduledAt, method: $method, note: $note, quantity: $quantity, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, discountTotal: $discountTotal, totalAmount: $totalAmount, transactionFee: $transactionFee, pointUsed: $pointUsed, pointDiscount: $pointDiscount, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class _$OrderRequestDataCopyWith<$Res> implements $OrderRequestDataCopyWith<$Res> {
  factory _$OrderRequestDataCopyWith(_OrderRequestData value, $Res Function(_OrderRequestData) _then) = __$OrderRequestDataCopyWithImpl;
@override @useResult
$Res call({
 int branchId, int? deliveryAddressId, String orderType, DateTime? scheduledAt, String method, String? note, int quantity, double subtotal, double vatTotal, double deliveryFee, double discountTotal, double totalAmount, double? transactionFee, int? pointUsed, double? pointDiscount, String? promoCode, double? promoCodeDiscount, double? distanceKm
});




}
/// @nodoc
class __$OrderRequestDataCopyWithImpl<$Res>
    implements _$OrderRequestDataCopyWith<$Res> {
  __$OrderRequestDataCopyWithImpl(this._self, this._then);

  final _OrderRequestData _self;
  final $Res Function(_OrderRequestData) _then;

/// Create a copy of OrderRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? deliveryAddressId = freezed,Object? orderType = null,Object? scheduledAt = freezed,Object? method = null,Object? note = freezed,Object? quantity = null,Object? subtotal = null,Object? vatTotal = null,Object? deliveryFee = null,Object? discountTotal = null,Object? totalAmount = null,Object? transactionFee = freezed,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? distanceKm = freezed,}) {
  return _then(_OrderRequestData(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,deliveryAddressId: freezed == deliveryAddressId ? _self.deliveryAddressId : deliveryAddressId // ignore: cast_nullable_to_non_nullable
as int?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,vatTotal: null == vatTotal ? _self.vatTotal : vatTotal // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,transactionFee: freezed == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as double?,pointUsed: freezed == pointUsed ? _self.pointUsed : pointUsed // ignore: cast_nullable_to_non_nullable
as int?,pointDiscount: freezed == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,promoCodeDiscount: freezed == promoCodeDiscount ? _self.promoCodeDiscount : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
as double?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
