// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {

 int get id; int get orderId; String get method; String get status; String? get transId;// should not be required because the customer will order with his point
 String? get telebirrPaymentOrderId;@JsonKey(fromJson: parseDouble) double get amount; DateTime? get transTime; String? get currency; String? get chapaTxnRef; DateTime get date;
/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentModelCopyWith<PaymentModel> get copyWith => _$PaymentModelCopyWithImpl<PaymentModel>(this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.transId, transId) || other.transId == transId)&&(identical(other.telebirrPaymentOrderId, telebirrPaymentOrderId) || other.telebirrPaymentOrderId == telebirrPaymentOrderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transTime, transTime) || other.transTime == transTime)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.chapaTxnRef, chapaTxnRef) || other.chapaTxnRef == chapaTxnRef)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,method,status,transId,telebirrPaymentOrderId,amount,transTime,currency,chapaTxnRef,date);

@override
String toString() {
  return 'PaymentModel(id: $id, orderId: $orderId, method: $method, status: $status, transId: $transId, telebirrPaymentOrderId: $telebirrPaymentOrderId, amount: $amount, transTime: $transTime, currency: $currency, chapaTxnRef: $chapaTxnRef, date: $date)';
}


}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res>  {
  factory $PaymentModelCopyWith(PaymentModel value, $Res Function(PaymentModel) _then) = _$PaymentModelCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, String method, String status, String? transId, String? telebirrPaymentOrderId,@JsonKey(fromJson: parseDouble) double amount, DateTime? transTime, String? currency, String? chapaTxnRef, DateTime date
});




}
/// @nodoc
class _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? method = null,Object? status = null,Object? transId = freezed,Object? telebirrPaymentOrderId = freezed,Object? amount = null,Object? transTime = freezed,Object? currency = freezed,Object? chapaTxnRef = freezed,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transId: freezed == transId ? _self.transId : transId // ignore: cast_nullable_to_non_nullable
as String?,telebirrPaymentOrderId: freezed == telebirrPaymentOrderId ? _self.telebirrPaymentOrderId : telebirrPaymentOrderId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transTime: freezed == transTime ? _self.transTime : transTime // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,chapaTxnRef: freezed == chapaTxnRef ? _self.chapaTxnRef : chapaTxnRef // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderId,  String method,  String status,  String? transId,  String? telebirrPaymentOrderId, @JsonKey(fromJson: parseDouble)  double amount,  DateTime? transTime,  String? currency,  String? chapaTxnRef,  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.orderId,_that.method,_that.status,_that.transId,_that.telebirrPaymentOrderId,_that.amount,_that.transTime,_that.currency,_that.chapaTxnRef,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderId,  String method,  String status,  String? transId,  String? telebirrPaymentOrderId, @JsonKey(fromJson: parseDouble)  double amount,  DateTime? transTime,  String? currency,  String? chapaTxnRef,  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that.id,_that.orderId,_that.method,_that.status,_that.transId,_that.telebirrPaymentOrderId,_that.amount,_that.transTime,_that.currency,_that.chapaTxnRef,_that.date);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderId,  String method,  String status,  String? transId,  String? telebirrPaymentOrderId, @JsonKey(fromJson: parseDouble)  double amount,  DateTime? transTime,  String? currency,  String? chapaTxnRef,  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.orderId,_that.method,_that.status,_that.transId,_that.telebirrPaymentOrderId,_that.amount,_that.transTime,_that.currency,_that.chapaTxnRef,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentModel extends PaymentModel {
  const _PaymentModel({required this.id, required this.orderId, required this.method, required this.status, this.transId, this.telebirrPaymentOrderId, @JsonKey(fromJson: parseDouble) required this.amount, this.transTime, this.currency, this.chapaTxnRef, required this.date}): super._();
  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

@override final  int id;
@override final  int orderId;
@override final  String method;
@override final  String status;
@override final  String? transId;
// should not be required because the customer will order with his point
@override final  String? telebirrPaymentOrderId;
@override@JsonKey(fromJson: parseDouble) final  double amount;
@override final  DateTime? transTime;
@override final  String? currency;
@override final  String? chapaTxnRef;
@override final  DateTime date;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentModelCopyWith<_PaymentModel> get copyWith => __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.transId, transId) || other.transId == transId)&&(identical(other.telebirrPaymentOrderId, telebirrPaymentOrderId) || other.telebirrPaymentOrderId == telebirrPaymentOrderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transTime, transTime) || other.transTime == transTime)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.chapaTxnRef, chapaTxnRef) || other.chapaTxnRef == chapaTxnRef)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,method,status,transId,telebirrPaymentOrderId,amount,transTime,currency,chapaTxnRef,date);

@override
String toString() {
  return 'PaymentModel(id: $id, orderId: $orderId, method: $method, status: $status, transId: $transId, telebirrPaymentOrderId: $telebirrPaymentOrderId, amount: $amount, transTime: $transTime, currency: $currency, chapaTxnRef: $chapaTxnRef, date: $date)';
}


}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(_PaymentModel value, $Res Function(_PaymentModel) _then) = __$PaymentModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, String method, String status, String? transId, String? telebirrPaymentOrderId,@JsonKey(fromJson: parseDouble) double amount, DateTime? transTime, String? currency, String? chapaTxnRef, DateTime date
});




}
/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? method = null,Object? status = null,Object? transId = freezed,Object? telebirrPaymentOrderId = freezed,Object? amount = null,Object? transTime = freezed,Object? currency = freezed,Object? chapaTxnRef = freezed,Object? date = null,}) {
  return _then(_PaymentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transId: freezed == transId ? _self.transId : transId // ignore: cast_nullable_to_non_nullable
as String?,telebirrPaymentOrderId: freezed == telebirrPaymentOrderId ? _self.telebirrPaymentOrderId : telebirrPaymentOrderId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transTime: freezed == transTime ? _self.transTime : transTime // ignore: cast_nullable_to_non_nullable
as DateTime?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,chapaTxnRef: freezed == chapaTxnRef ? _self.chapaTxnRef : chapaTxnRef // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
