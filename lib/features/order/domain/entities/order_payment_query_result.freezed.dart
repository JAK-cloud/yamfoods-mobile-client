// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderPaymentQueryResult {

 PaymentStatus get status;
/// Create a copy of OrderPaymentQueryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPaymentQueryResultCopyWith<OrderPaymentQueryResult> get copyWith => _$OrderPaymentQueryResultCopyWithImpl<OrderPaymentQueryResult>(this as OrderPaymentQueryResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPaymentQueryResult&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'OrderPaymentQueryResult(status: $status)';
}


}

/// @nodoc
abstract mixin class $OrderPaymentQueryResultCopyWith<$Res>  {
  factory $OrderPaymentQueryResultCopyWith(OrderPaymentQueryResult value, $Res Function(OrderPaymentQueryResult) _then) = _$OrderPaymentQueryResultCopyWithImpl;
@useResult
$Res call({
 PaymentStatus status
});




}
/// @nodoc
class _$OrderPaymentQueryResultCopyWithImpl<$Res>
    implements $OrderPaymentQueryResultCopyWith<$Res> {
  _$OrderPaymentQueryResultCopyWithImpl(this._self, this._then);

  final OrderPaymentQueryResult _self;
  final $Res Function(OrderPaymentQueryResult) _then;

/// Create a copy of OrderPaymentQueryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderPaymentQueryResult].
extension OrderPaymentQueryResultPatterns on OrderPaymentQueryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderPaymentQueryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderPaymentQueryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderPaymentQueryResult value)  $default,){
final _that = this;
switch (_that) {
case _OrderPaymentQueryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderPaymentQueryResult value)?  $default,){
final _that = this;
switch (_that) {
case _OrderPaymentQueryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderPaymentQueryResult() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentStatus status)  $default,) {final _that = this;
switch (_that) {
case _OrderPaymentQueryResult():
return $default(_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentStatus status)?  $default,) {final _that = this;
switch (_that) {
case _OrderPaymentQueryResult() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _OrderPaymentQueryResult implements OrderPaymentQueryResult {
  const _OrderPaymentQueryResult({required this.status});
  

@override final  PaymentStatus status;

/// Create a copy of OrderPaymentQueryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderPaymentQueryResultCopyWith<_OrderPaymentQueryResult> get copyWith => __$OrderPaymentQueryResultCopyWithImpl<_OrderPaymentQueryResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderPaymentQueryResult&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'OrderPaymentQueryResult(status: $status)';
}


}

/// @nodoc
abstract mixin class _$OrderPaymentQueryResultCopyWith<$Res> implements $OrderPaymentQueryResultCopyWith<$Res> {
  factory _$OrderPaymentQueryResultCopyWith(_OrderPaymentQueryResult value, $Res Function(_OrderPaymentQueryResult) _then) = __$OrderPaymentQueryResultCopyWithImpl;
@override @useResult
$Res call({
 PaymentStatus status
});




}
/// @nodoc
class __$OrderPaymentQueryResultCopyWithImpl<$Res>
    implements _$OrderPaymentQueryResultCopyWith<$Res> {
  __$OrderPaymentQueryResultCopyWithImpl(this._self, this._then);

  final _OrderPaymentQueryResult _self;
  final $Res Function(_OrderPaymentQueryResult) _then;

/// Create a copy of OrderPaymentQueryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_OrderPaymentQueryResult(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,
  ));
}


}

// dart format on
