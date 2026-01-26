// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Payment {

 int get id; int get orderId; String get method; PaymentStatus get status; String? get transId;// should not be required because the customer will order with his point
 String? get telebirrPaymentOrderId; double get amount; DateTime? get transTime; String? get currency; DateTime get date;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.transId, transId) || other.transId == transId)&&(identical(other.telebirrPaymentOrderId, telebirrPaymentOrderId) || other.telebirrPaymentOrderId == telebirrPaymentOrderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transTime, transTime) || other.transTime == transTime)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,orderId,method,status,transId,telebirrPaymentOrderId,amount,transTime,currency,date);

@override
String toString() {
  return 'Payment(id: $id, orderId: $orderId, method: $method, status: $status, transId: $transId, telebirrPaymentOrderId: $telebirrPaymentOrderId, amount: $amount, transTime: $transTime, currency: $currency, date: $date)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, String method, PaymentStatus status, String? transId, String? telebirrPaymentOrderId, double amount, DateTime? transTime, String? currency, DateTime date
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? method = null,Object? status = null,Object? transId = freezed,Object? telebirrPaymentOrderId = freezed,Object? amount = null,Object? transTime = freezed,Object? currency = freezed,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,transId: freezed == transId ? _self.transId : transId // ignore: cast_nullable_to_non_nullable
as String?,telebirrPaymentOrderId: freezed == telebirrPaymentOrderId ? _self.telebirrPaymentOrderId : telebirrPaymentOrderId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transTime: freezed == transTime ? _self.transTime : transTime // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderId,  String method,  PaymentStatus status,  String? transId,  String? telebirrPaymentOrderId,  double amount,  DateTime? transTime,  String? currency,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.orderId,_that.method,_that.status,_that.transId,_that.telebirrPaymentOrderId,_that.amount,_that.transTime,_that.currency,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderId,  String method,  PaymentStatus status,  String? transId,  String? telebirrPaymentOrderId,  double amount,  DateTime? transTime,  String? currency,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.orderId,_that.method,_that.status,_that.transId,_that.telebirrPaymentOrderId,_that.amount,_that.transTime,_that.currency,_that.date);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderId,  String method,  PaymentStatus status,  String? transId,  String? telebirrPaymentOrderId,  double amount,  DateTime? transTime,  String? currency,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.orderId,_that.method,_that.status,_that.transId,_that.telebirrPaymentOrderId,_that.amount,_that.transTime,_that.currency,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _Payment implements Payment {
  const _Payment({required this.id, required this.orderId, required this.method, required this.status, this.transId, this.telebirrPaymentOrderId, required this.amount, this.transTime, this.currency, required this.date});
  

@override final  int id;
@override final  int orderId;
@override final  String method;
@override final  PaymentStatus status;
@override final  String? transId;
// should not be required because the customer will order with his point
@override final  String? telebirrPaymentOrderId;
@override final  double amount;
@override final  DateTime? transTime;
@override final  String? currency;
@override final  DateTime date;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.transId, transId) || other.transId == transId)&&(identical(other.telebirrPaymentOrderId, telebirrPaymentOrderId) || other.telebirrPaymentOrderId == telebirrPaymentOrderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transTime, transTime) || other.transTime == transTime)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,orderId,method,status,transId,telebirrPaymentOrderId,amount,transTime,currency,date);

@override
String toString() {
  return 'Payment(id: $id, orderId: $orderId, method: $method, status: $status, transId: $transId, telebirrPaymentOrderId: $telebirrPaymentOrderId, amount: $amount, transTime: $transTime, currency: $currency, date: $date)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, String method, PaymentStatus status, String? transId, String? telebirrPaymentOrderId, double amount, DateTime? transTime, String? currency, DateTime date
});




}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? method = null,Object? status = null,Object? transId = freezed,Object? telebirrPaymentOrderId = freezed,Object? amount = null,Object? transTime = freezed,Object? currency = freezed,Object? date = null,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,transId: freezed == transId ? _self.transId : transId // ignore: cast_nullable_to_non_nullable
as String?,telebirrPaymentOrderId: freezed == telebirrPaymentOrderId ? _self.telebirrPaymentOrderId : telebirrPaymentOrderId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transTime: freezed == transTime ? _self.transTime : transTime // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
