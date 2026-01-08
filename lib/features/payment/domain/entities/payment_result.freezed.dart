// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentResult()';
}


}

/// @nodoc
class $PaymentResultCopyWith<$Res>  {
$PaymentResultCopyWith(PaymentResult _, $Res Function(PaymentResult) __);
}


/// Adds pattern-matching-related methods to [PaymentResult].
extension PaymentResultPatterns on PaymentResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentSuccess value)?  success,TResult Function( PaymentFailure value)?  failure,TResult Function( PaymentCancelled value)?  cancelled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentSuccess() when success != null:
return success(_that);case PaymentFailure() when failure != null:
return failure(_that);case PaymentCancelled() when cancelled != null:
return cancelled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentSuccess value)  success,required TResult Function( PaymentFailure value)  failure,required TResult Function( PaymentCancelled value)  cancelled,}){
final _that = this;
switch (_that) {
case PaymentSuccess():
return success(_that);case PaymentFailure():
return failure(_that);case PaymentCancelled():
return cancelled(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentSuccess value)?  success,TResult? Function( PaymentFailure value)?  failure,TResult? Function( PaymentCancelled value)?  cancelled,}){
final _that = this;
switch (_that) {
case PaymentSuccess() when success != null:
return success(_that);case PaymentFailure() when failure != null:
return failure(_that);case PaymentCancelled() when cancelled != null:
return cancelled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? transactionId)?  success,TResult Function( String message)?  failure,TResult Function()?  cancelled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentSuccess() when success != null:
return success(_that.transactionId);case PaymentFailure() when failure != null:
return failure(_that.message);case PaymentCancelled() when cancelled != null:
return cancelled();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? transactionId)  success,required TResult Function( String message)  failure,required TResult Function()  cancelled,}) {final _that = this;
switch (_that) {
case PaymentSuccess():
return success(_that.transactionId);case PaymentFailure():
return failure(_that.message);case PaymentCancelled():
return cancelled();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? transactionId)?  success,TResult? Function( String message)?  failure,TResult? Function()?  cancelled,}) {final _that = this;
switch (_that) {
case PaymentSuccess() when success != null:
return success(_that.transactionId);case PaymentFailure() when failure != null:
return failure(_that.message);case PaymentCancelled() when cancelled != null:
return cancelled();case _:
  return null;

}
}

}

/// @nodoc


class PaymentSuccess implements PaymentResult {
  const PaymentSuccess({this.transactionId});
  

 final  String? transactionId;

/// Create a copy of PaymentResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentSuccessCopyWith<PaymentSuccess> get copyWith => _$PaymentSuccessCopyWithImpl<PaymentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentSuccess&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'PaymentResult.success(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $PaymentSuccessCopyWith<$Res> implements $PaymentResultCopyWith<$Res> {
  factory $PaymentSuccessCopyWith(PaymentSuccess value, $Res Function(PaymentSuccess) _then) = _$PaymentSuccessCopyWithImpl;
@useResult
$Res call({
 String? transactionId
});




}
/// @nodoc
class _$PaymentSuccessCopyWithImpl<$Res>
    implements $PaymentSuccessCopyWith<$Res> {
  _$PaymentSuccessCopyWithImpl(this._self, this._then);

  final PaymentSuccess _self;
  final $Res Function(PaymentSuccess) _then;

/// Create a copy of PaymentResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = freezed,}) {
  return _then(PaymentSuccess(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class PaymentFailure implements PaymentResult {
  const PaymentFailure({required this.message});
  

 final  String message;

/// Create a copy of PaymentResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentFailureCopyWith<PaymentFailure> get copyWith => _$PaymentFailureCopyWithImpl<PaymentFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PaymentResult.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentFailureCopyWith<$Res> implements $PaymentResultCopyWith<$Res> {
  factory $PaymentFailureCopyWith(PaymentFailure value, $Res Function(PaymentFailure) _then) = _$PaymentFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PaymentFailureCopyWithImpl<$Res>
    implements $PaymentFailureCopyWith<$Res> {
  _$PaymentFailureCopyWithImpl(this._self, this._then);

  final PaymentFailure _self;
  final $Res Function(PaymentFailure) _then;

/// Create a copy of PaymentResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PaymentFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PaymentCancelled implements PaymentResult {
  const PaymentCancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentResult.cancelled()';
}


}




// dart format on
