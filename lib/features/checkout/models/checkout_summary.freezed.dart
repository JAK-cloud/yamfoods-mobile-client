// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutSummary {

 double get priceTotal;// Sum of (originalPrice × quantity)
 double get itemDiscountTotal;// sum of each item discounts
 double get promoDiscount;// from promo code
 double get pointDiscount;// from points
 double get discountTotal;// promoDiscount + pointDiscount + itemDiscountTotal
 double get subtotal;// priceTotal - discountTotal (matches OrderRequestData)
 double get vatTotal;// sum of per-item VAT calculated on discounted prices
 double get deliveryFee;// 0 for pickup, calculated for delivery
 double get transactionFee;// Chapa 2.5% fee when payment method is chapa
 double get totalAmount;// subtotal + vatTotal + deliveryFee + transactionFee
 int get quantity;
/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSummaryCopyWith<CheckoutSummary> get copyWith => _$CheckoutSummaryCopyWithImpl<CheckoutSummary>(this as CheckoutSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSummary&&(identical(other.priceTotal, priceTotal) || other.priceTotal == priceTotal)&&(identical(other.itemDiscountTotal, itemDiscountTotal) || other.itemDiscountTotal == itemDiscountTotal)&&(identical(other.promoDiscount, promoDiscount) || other.promoDiscount == promoDiscount)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,priceTotal,itemDiscountTotal,promoDiscount,pointDiscount,discountTotal,subtotal,vatTotal,deliveryFee,transactionFee,totalAmount,quantity);

@override
String toString() {
  return 'CheckoutSummary(priceTotal: $priceTotal, itemDiscountTotal: $itemDiscountTotal, promoDiscount: $promoDiscount, pointDiscount: $pointDiscount, discountTotal: $discountTotal, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, transactionFee: $transactionFee, totalAmount: $totalAmount, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CheckoutSummaryCopyWith<$Res>  {
  factory $CheckoutSummaryCopyWith(CheckoutSummary value, $Res Function(CheckoutSummary) _then) = _$CheckoutSummaryCopyWithImpl;
@useResult
$Res call({
 double priceTotal, double itemDiscountTotal, double promoDiscount, double pointDiscount, double discountTotal, double subtotal, double vatTotal, double deliveryFee, double transactionFee, double totalAmount, int quantity
});




}
/// @nodoc
class _$CheckoutSummaryCopyWithImpl<$Res>
    implements $CheckoutSummaryCopyWith<$Res> {
  _$CheckoutSummaryCopyWithImpl(this._self, this._then);

  final CheckoutSummary _self;
  final $Res Function(CheckoutSummary) _then;

/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? priceTotal = null,Object? itemDiscountTotal = null,Object? promoDiscount = null,Object? pointDiscount = null,Object? discountTotal = null,Object? subtotal = null,Object? vatTotal = null,Object? deliveryFee = null,Object? transactionFee = null,Object? totalAmount = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
priceTotal: null == priceTotal ? _self.priceTotal : priceTotal // ignore: cast_nullable_to_non_nullable
as double,itemDiscountTotal: null == itemDiscountTotal ? _self.itemDiscountTotal : itemDiscountTotal // ignore: cast_nullable_to_non_nullable
as double,promoDiscount: null == promoDiscount ? _self.promoDiscount : promoDiscount // ignore: cast_nullable_to_non_nullable
as double,pointDiscount: null == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as double,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,vatTotal: null == vatTotal ? _self.vatTotal : vatTotal // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutSummary].
extension CheckoutSummaryPatterns on CheckoutSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutSummary value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double priceTotal,  double itemDiscountTotal,  double promoDiscount,  double pointDiscount,  double discountTotal,  double subtotal,  double vatTotal,  double deliveryFee,  double transactionFee,  double totalAmount,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutSummary() when $default != null:
return $default(_that.priceTotal,_that.itemDiscountTotal,_that.promoDiscount,_that.pointDiscount,_that.discountTotal,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.transactionFee,_that.totalAmount,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double priceTotal,  double itemDiscountTotal,  double promoDiscount,  double pointDiscount,  double discountTotal,  double subtotal,  double vatTotal,  double deliveryFee,  double transactionFee,  double totalAmount,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _CheckoutSummary():
return $default(_that.priceTotal,_that.itemDiscountTotal,_that.promoDiscount,_that.pointDiscount,_that.discountTotal,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.transactionFee,_that.totalAmount,_that.quantity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double priceTotal,  double itemDiscountTotal,  double promoDiscount,  double pointDiscount,  double discountTotal,  double subtotal,  double vatTotal,  double deliveryFee,  double transactionFee,  double totalAmount,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutSummary() when $default != null:
return $default(_that.priceTotal,_that.itemDiscountTotal,_that.promoDiscount,_that.pointDiscount,_that.discountTotal,_that.subtotal,_that.vatTotal,_that.deliveryFee,_that.transactionFee,_that.totalAmount,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutSummary implements CheckoutSummary {
  const _CheckoutSummary({required this.priceTotal, required this.itemDiscountTotal, required this.promoDiscount, required this.pointDiscount, required this.discountTotal, required this.subtotal, required this.vatTotal, required this.deliveryFee, required this.transactionFee, required this.totalAmount, required this.quantity});
  

@override final  double priceTotal;
// Sum of (originalPrice × quantity)
@override final  double itemDiscountTotal;
// sum of each item discounts
@override final  double promoDiscount;
// from promo code
@override final  double pointDiscount;
// from points
@override final  double discountTotal;
// promoDiscount + pointDiscount + itemDiscountTotal
@override final  double subtotal;
// priceTotal - discountTotal (matches OrderRequestData)
@override final  double vatTotal;
// sum of per-item VAT calculated on discounted prices
@override final  double deliveryFee;
// 0 for pickup, calculated for delivery
@override final  double transactionFee;
// Chapa 2.5% fee when payment method is chapa
@override final  double totalAmount;
// subtotal + vatTotal + deliveryFee + transactionFee
@override final  int quantity;

/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSummaryCopyWith<_CheckoutSummary> get copyWith => __$CheckoutSummaryCopyWithImpl<_CheckoutSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSummary&&(identical(other.priceTotal, priceTotal) || other.priceTotal == priceTotal)&&(identical(other.itemDiscountTotal, itemDiscountTotal) || other.itemDiscountTotal == itemDiscountTotal)&&(identical(other.promoDiscount, promoDiscount) || other.promoDiscount == promoDiscount)&&(identical(other.pointDiscount, pointDiscount) || other.pointDiscount == pointDiscount)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.vatTotal, vatTotal) || other.vatTotal == vatTotal)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,priceTotal,itemDiscountTotal,promoDiscount,pointDiscount,discountTotal,subtotal,vatTotal,deliveryFee,transactionFee,totalAmount,quantity);

@override
String toString() {
  return 'CheckoutSummary(priceTotal: $priceTotal, itemDiscountTotal: $itemDiscountTotal, promoDiscount: $promoDiscount, pointDiscount: $pointDiscount, discountTotal: $discountTotal, subtotal: $subtotal, vatTotal: $vatTotal, deliveryFee: $deliveryFee, transactionFee: $transactionFee, totalAmount: $totalAmount, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSummaryCopyWith<$Res> implements $CheckoutSummaryCopyWith<$Res> {
  factory _$CheckoutSummaryCopyWith(_CheckoutSummary value, $Res Function(_CheckoutSummary) _then) = __$CheckoutSummaryCopyWithImpl;
@override @useResult
$Res call({
 double priceTotal, double itemDiscountTotal, double promoDiscount, double pointDiscount, double discountTotal, double subtotal, double vatTotal, double deliveryFee, double transactionFee, double totalAmount, int quantity
});




}
/// @nodoc
class __$CheckoutSummaryCopyWithImpl<$Res>
    implements _$CheckoutSummaryCopyWith<$Res> {
  __$CheckoutSummaryCopyWithImpl(this._self, this._then);

  final _CheckoutSummary _self;
  final $Res Function(_CheckoutSummary) _then;

/// Create a copy of CheckoutSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? priceTotal = null,Object? itemDiscountTotal = null,Object? promoDiscount = null,Object? pointDiscount = null,Object? discountTotal = null,Object? subtotal = null,Object? vatTotal = null,Object? deliveryFee = null,Object? transactionFee = null,Object? totalAmount = null,Object? quantity = null,}) {
  return _then(_CheckoutSummary(
priceTotal: null == priceTotal ? _self.priceTotal : priceTotal // ignore: cast_nullable_to_non_nullable
as double,itemDiscountTotal: null == itemDiscountTotal ? _self.itemDiscountTotal : itemDiscountTotal // ignore: cast_nullable_to_non_nullable
as double,promoDiscount: null == promoDiscount ? _self.promoDiscount : promoDiscount // ignore: cast_nullable_to_non_nullable
as double,pointDiscount: null == pointDiscount ? _self.pointDiscount : pointDiscount // ignore: cast_nullable_to_non_nullable
as double,discountTotal: null == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as double,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,vatTotal: null == vatTotal ? _self.vatTotal : vatTotal // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
