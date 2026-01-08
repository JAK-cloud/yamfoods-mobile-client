// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {

 int get id; int? get userId; String get userPhone; int get branchId; String get qrCode; String get status; String get type; int? get delivererId;// nullable because this order class intended for customer not for deliverer. for deliverer it should be required
 String? get delivererPhone; DateTime? get scheduledAt; String? get note; int get quantity;@JsonKey(fromJson: parseDouble) double get subtotal;@JsonKey(fromJson: parseDouble) double? get vatTotal;@JsonKey(fromJson: parseDouble) double get deliveryFee; int? get pointUsed;@JsonKey(fromJson: parseDouble) double? get pointDiscount; String? get promoCode;@JsonKey(fromJson: parseDouble) double? get promoCodeDiscount;@JsonKey(fromJson: parseDouble) double? get discountTotal;@JsonKey(fromJson: parseDouble) double get totalAmount; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userPhone, userPhone) || other.userPhone == userPhone)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.delivererId, delivererId) || other.delivererId == delivererId)&&(identical(other.delivererPhone, delivererPhone) || other.delivererPhone == delivererPhone)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userPhone,branchId,qrCode,status,type,delivererId,delivererPhone,scheduledAt,note,quantity,subtotal,vatTotal,deliveryFee,pointUsed,pointDiscount,promoCode,promoCodeDiscount,discountTotal,totalAmount,createdAt,updatedAt]);

@override
String toString() {
  return 'OrderModel(id: $id, userId: $userId, userPhone: $userPhone, branchId: $branchId, qrCode: $qrCode, status: $status, type: $type, delivererId: $delivererId, delivererPhone: $delivererPhone, scheduledAt: $scheduledAt, note: $note, quantity: $quantity, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, pointUsed: $pointUsed, pointDiscount: $pointDiscount, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, discountTotal: $discountTotal, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
 int id, int? userId, String userPhone, int branchId, String qrCode, String status, String type, int? delivererId, String? delivererPhone, DateTime? scheduledAt, String? note, int quantity,@JsonKey(fromJson: parseDouble) double subtotal,@JsonKey(fromJson: parseDouble) double? vatTotal,@JsonKey(fromJson: parseDouble) double deliveryFee, int? pointUsed,@JsonKey(fromJson: parseDouble) double? pointDiscount, String? promoCode,@JsonKey(fromJson: parseDouble) double? promoCodeDiscount,@JsonKey(fromJson: parseDouble) double? discountTotal,@JsonKey(fromJson: parseDouble) double totalAmount, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? userPhone = null,Object? branchId = null,Object? qrCode = null,Object? status = null,Object? type = null,Object? delivererId = freezed,Object? delivererPhone = freezed,Object? scheduledAt = freezed,Object? note = freezed,Object? quantity = null,Object? subtotal = null,Object? vatTotal = freezed,Object? deliveryFee = null,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? discountTotal = freezed,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
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
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? userId,  String userPhone,  int branchId,  String qrCode,  String status,  String type,  int? delivererId,  String? delivererPhone,  DateTime? scheduledAt,  String? note,  int quantity, @JsonKey(fromJson: parseDouble)  double subtotal, @JsonKey(fromJson: parseDouble)  double? vatTotal, @JsonKey(fromJson: parseDouble)  double deliveryFee,  int? pointUsed, @JsonKey(fromJson: parseDouble)  double? pointDiscount,  String? promoCode, @JsonKey(fromJson: parseDouble)  double? promoCodeDiscount, @JsonKey(fromJson: parseDouble)  double? discountTotal, @JsonKey(fromJson: parseDouble)  double totalAmount,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.userId,_that.userPhone,_that.branchId,_that.qrCode,_that.status,_that.type,_that.delivererId,_that.delivererPhone,_that.scheduledAt,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.discountTotal,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? userId,  String userPhone,  int branchId,  String qrCode,  String status,  String type,  int? delivererId,  String? delivererPhone,  DateTime? scheduledAt,  String? note,  int quantity, @JsonKey(fromJson: parseDouble)  double subtotal, @JsonKey(fromJson: parseDouble)  double? vatTotal, @JsonKey(fromJson: parseDouble)  double deliveryFee,  int? pointUsed, @JsonKey(fromJson: parseDouble)  double? pointDiscount,  String? promoCode, @JsonKey(fromJson: parseDouble)  double? promoCodeDiscount, @JsonKey(fromJson: parseDouble)  double? discountTotal, @JsonKey(fromJson: parseDouble)  double totalAmount,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.userId,_that.userPhone,_that.branchId,_that.qrCode,_that.status,_that.type,_that.delivererId,_that.delivererPhone,_that.scheduledAt,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.discountTotal,_that.totalAmount,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? userId,  String userPhone,  int branchId,  String qrCode,  String status,  String type,  int? delivererId,  String? delivererPhone,  DateTime? scheduledAt,  String? note,  int quantity, @JsonKey(fromJson: parseDouble)  double subtotal, @JsonKey(fromJson: parseDouble)  double? vatTotal, @JsonKey(fromJson: parseDouble)  double deliveryFee,  int? pointUsed, @JsonKey(fromJson: parseDouble)  double? pointDiscount,  String? promoCode, @JsonKey(fromJson: parseDouble)  double? promoCodeDiscount, @JsonKey(fromJson: parseDouble)  double? discountTotal, @JsonKey(fromJson: parseDouble)  double totalAmount,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.userId,_that.userPhone,_that.branchId,_that.qrCode,_that.status,_that.type,_that.delivererId,_that.delivererPhone,_that.scheduledAt,_that.note,_that.quantity,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.pointUsed,_that.pointDiscount,_that.promoCode,_that.promoCodeDiscount,_that.discountTotal,_that.totalAmount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel extends OrderModel {
  const _OrderModel({required this.id, this.userId, required this.userPhone, required this.branchId, required this.qrCode, required this.status, required this.type, this.delivererId, this.delivererPhone, this.scheduledAt, this.note, required this.quantity, @JsonKey(fromJson: parseDouble) required this.subtotal, @JsonKey(fromJson: parseDouble) this.vatTotal, @JsonKey(fromJson: parseDouble) required this.deliveryFee, this.pointUsed, @JsonKey(fromJson: parseDouble) this.pointDiscount, this.promoCode, @JsonKey(fromJson: parseDouble) this.promoCodeDiscount, @JsonKey(fromJson: parseDouble) this.discountTotal, @JsonKey(fromJson: parseDouble) required this.totalAmount, required this.createdAt, required this.updatedAt}): super._();
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override final  int id;
@override final  int? userId;
@override final  String userPhone;
@override final  int branchId;
@override final  String qrCode;
@override final  String status;
@override final  String type;
@override final  int? delivererId;
// nullable because this order class intended for customer not for deliverer. for deliverer it should be required
@override final  String? delivererPhone;
@override final  DateTime? scheduledAt;
@override final  String? note;
@override final  int quantity;
@override@JsonKey(fromJson: parseDouble) final  double subtotal;
@override@JsonKey(fromJson: parseDouble) final  double? vatTotal;
@override@JsonKey(fromJson: parseDouble) final  double deliveryFee;
@override final  int? pointUsed;
@override@JsonKey(fromJson: parseDouble) final  double? pointDiscount;
@override final  String? promoCode;
@override@JsonKey(fromJson: parseDouble) final  double? promoCodeDiscount;
@override@JsonKey(fromJson: parseDouble) final  double? discountTotal;
@override@JsonKey(fromJson: parseDouble) final  double totalAmount;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userPhone, userPhone) || other.userPhone == userPhone)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.delivererId, delivererId) || other.delivererId == delivererId)&&(identical(other.delivererPhone, delivererPhone) || other.delivererPhone == delivererPhone)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.pointUsed, pointUsed) || other.pointUsed == pointUsed)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.promoCodeDiscount, promoCodeDiscount) || other.promoCodeDiscount == promoCodeDiscount)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userPhone,branchId,qrCode,status,type,delivererId,delivererPhone,scheduledAt,note,quantity,subtotal,vatTotal,deliveryFee,pointUsed,pointDiscount,promoCode,promoCodeDiscount,discountTotal,totalAmount,createdAt,updatedAt]);

@override
String toString() {
  return 'OrderModel(id: $id, userId: $userId, userPhone: $userPhone, branchId: $branchId, qrCode: $qrCode, status: $status, type: $type, delivererId: $delivererId, delivererPhone: $delivererPhone, scheduledAt: $scheduledAt, note: $note, quantity: $quantity, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, pointUsed: $pointUsed, pointDiscount: $pointDiscount, promoCode: $promoCode, promoCodeDiscount: $promoCodeDiscount, discountTotal: $discountTotal, totalAmount: $totalAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int? userId, String userPhone, int branchId, String qrCode, String status, String type, int? delivererId, String? delivererPhone, DateTime? scheduledAt, String? note, int quantity,@JsonKey(fromJson: parseDouble) double subtotal,@JsonKey(fromJson: parseDouble) double? vatTotal,@JsonKey(fromJson: parseDouble) double deliveryFee, int? pointUsed,@JsonKey(fromJson: parseDouble) double? pointDiscount, String? promoCode,@JsonKey(fromJson: parseDouble) double? promoCodeDiscount,@JsonKey(fromJson: parseDouble) double? discountTotal,@JsonKey(fromJson: parseDouble) double totalAmount, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? userPhone = null,Object? branchId = null,Object? qrCode = null,Object? status = null,Object? type = null,Object? delivererId = freezed,Object? delivererPhone = freezed,Object? scheduledAt = freezed,Object? note = freezed,Object? quantity = null,Object? subtotal = null,Object? vatTotal = freezed,Object? deliveryFee = null,Object? pointUsed = freezed,Object? pointDiscount = freezed,Object? promoCode = freezed,Object? promoCodeDiscount = freezed,Object? discountTotal = freezed,Object? totalAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_OrderModel(
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
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
