// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure()';
}


}

/// @nodoc
class $FailureCopyWith<$Res>  {
$FailureCopyWith(Failure _, $Res Function(Failure) __);
}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NetworkFailure value)?  network,TResult Function( BackendFailure value)?  backend,TResult Function( AuthFailure value)?  auth,TResult Function( ValidationFailure value)?  validation,TResult Function( PermissionFailure value)?  permission,TResult Function( PaymentFailure value)?  payment,TResult Function( CacheFailure value)?  cache,TResult Function( ParsingFailure value)?  parsing,TResult Function( UnexpectedFailure value)?  unexpected,TResult Function( MapFailure value)?  mapError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that);case BackendFailure() when backend != null:
return backend(_that);case AuthFailure() when auth != null:
return auth(_that);case ValidationFailure() when validation != null:
return validation(_that);case PermissionFailure() when permission != null:
return permission(_that);case PaymentFailure() when payment != null:
return payment(_that);case CacheFailure() when cache != null:
return cache(_that);case ParsingFailure() when parsing != null:
return parsing(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case MapFailure() when mapError != null:
return mapError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NetworkFailure value)  network,required TResult Function( BackendFailure value)  backend,required TResult Function( AuthFailure value)  auth,required TResult Function( ValidationFailure value)  validation,required TResult Function( PermissionFailure value)  permission,required TResult Function( PaymentFailure value)  payment,required TResult Function( CacheFailure value)  cache,required TResult Function( ParsingFailure value)  parsing,required TResult Function( UnexpectedFailure value)  unexpected,required TResult Function( MapFailure value)  mapError,}){
final _that = this;
switch (_that) {
case NetworkFailure():
return network(_that);case BackendFailure():
return backend(_that);case AuthFailure():
return auth(_that);case ValidationFailure():
return validation(_that);case PermissionFailure():
return permission(_that);case PaymentFailure():
return payment(_that);case CacheFailure():
return cache(_that);case ParsingFailure():
return parsing(_that);case UnexpectedFailure():
return unexpected(_that);case MapFailure():
return mapError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NetworkFailure value)?  network,TResult? Function( BackendFailure value)?  backend,TResult? Function( AuthFailure value)?  auth,TResult? Function( ValidationFailure value)?  validation,TResult? Function( PermissionFailure value)?  permission,TResult? Function( PaymentFailure value)?  payment,TResult? Function( CacheFailure value)?  cache,TResult? Function( ParsingFailure value)?  parsing,TResult? Function( UnexpectedFailure value)?  unexpected,TResult? Function( MapFailure value)?  mapError,}){
final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that);case BackendFailure() when backend != null:
return backend(_that);case AuthFailure() when auth != null:
return auth(_that);case ValidationFailure() when validation != null:
return validation(_that);case PermissionFailure() when permission != null:
return permission(_that);case PaymentFailure() when payment != null:
return payment(_that);case CacheFailure() when cache != null:
return cache(_that);case ParsingFailure() when parsing != null:
return parsing(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case MapFailure() when mapError != null:
return mapError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  network,TResult Function( String message,  int? statusCode)?  backend,TResult Function( String message)?  auth,TResult Function( String message)?  validation,TResult Function( PermissionType type,  bool permanentlyDenied)?  permission,TResult Function( String message)?  payment,TResult Function( String? message)?  cache,TResult Function( String? message)?  parsing,TResult Function( String? message)?  unexpected,TResult Function( String message)?  mapError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that.message);case BackendFailure() when backend != null:
return backend(_that.message,_that.statusCode);case AuthFailure() when auth != null:
return auth(_that.message);case ValidationFailure() when validation != null:
return validation(_that.message);case PermissionFailure() when permission != null:
return permission(_that.type,_that.permanentlyDenied);case PaymentFailure() when payment != null:
return payment(_that.message);case CacheFailure() when cache != null:
return cache(_that.message);case ParsingFailure() when parsing != null:
return parsing(_that.message);case UnexpectedFailure() when unexpected != null:
return unexpected(_that.message);case MapFailure() when mapError != null:
return mapError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  network,required TResult Function( String message,  int? statusCode)  backend,required TResult Function( String message)  auth,required TResult Function( String message)  validation,required TResult Function( PermissionType type,  bool permanentlyDenied)  permission,required TResult Function( String message)  payment,required TResult Function( String? message)  cache,required TResult Function( String? message)  parsing,required TResult Function( String? message)  unexpected,required TResult Function( String message)  mapError,}) {final _that = this;
switch (_that) {
case NetworkFailure():
return network(_that.message);case BackendFailure():
return backend(_that.message,_that.statusCode);case AuthFailure():
return auth(_that.message);case ValidationFailure():
return validation(_that.message);case PermissionFailure():
return permission(_that.type,_that.permanentlyDenied);case PaymentFailure():
return payment(_that.message);case CacheFailure():
return cache(_that.message);case ParsingFailure():
return parsing(_that.message);case UnexpectedFailure():
return unexpected(_that.message);case MapFailure():
return mapError(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  network,TResult? Function( String message,  int? statusCode)?  backend,TResult? Function( String message)?  auth,TResult? Function( String message)?  validation,TResult? Function( PermissionType type,  bool permanentlyDenied)?  permission,TResult? Function( String message)?  payment,TResult? Function( String? message)?  cache,TResult? Function( String? message)?  parsing,TResult? Function( String? message)?  unexpected,TResult? Function( String message)?  mapError,}) {final _that = this;
switch (_that) {
case NetworkFailure() when network != null:
return network(_that.message);case BackendFailure() when backend != null:
return backend(_that.message,_that.statusCode);case AuthFailure() when auth != null:
return auth(_that.message);case ValidationFailure() when validation != null:
return validation(_that.message);case PermissionFailure() when permission != null:
return permission(_that.type,_that.permanentlyDenied);case PaymentFailure() when payment != null:
return payment(_that.message);case CacheFailure() when cache != null:
return cache(_that.message);case ParsingFailure() when parsing != null:
return parsing(_that.message);case UnexpectedFailure() when unexpected != null:
return unexpected(_that.message);case MapFailure() when mapError != null:
return mapError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NetworkFailure implements Failure {
  const NetworkFailure({this.message});
  

 final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.network(message: $message)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NetworkFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class BackendFailure implements Failure {
  const BackendFailure({required this.message, this.statusCode});
  

 final  String message;
 final  int? statusCode;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackendFailureCopyWith<BackendFailure> get copyWith => _$BackendFailureCopyWithImpl<BackendFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackendFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'Failure.backend(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $BackendFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $BackendFailureCopyWith(BackendFailure value, $Res Function(BackendFailure) _then) = _$BackendFailureCopyWithImpl;
@useResult
$Res call({
 String message, int? statusCode
});




}
/// @nodoc
class _$BackendFailureCopyWithImpl<$Res>
    implements $BackendFailureCopyWith<$Res> {
  _$BackendFailureCopyWithImpl(this._self, this._then);

  final BackendFailure _self;
  final $Res Function(BackendFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,}) {
  return _then(BackendFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class AuthFailure implements Failure {
  const AuthFailure({required this.message});
  

 final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthFailureCopyWith<AuthFailure> get copyWith => _$AuthFailureCopyWithImpl<AuthFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.auth(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(AuthFailure value, $Res Function(AuthFailure) _then) = _$AuthFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._self, this._then);

  final AuthFailure _self;
  final $Res Function(AuthFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidationFailure implements Failure {
  const ValidationFailure({required this.message});
  

 final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationFailureCopyWith<ValidationFailure> get copyWith => _$ValidationFailureCopyWithImpl<ValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.validation(message: $message)';
}


}

/// @nodoc
abstract mixin class $ValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ValidationFailureCopyWith(ValidationFailure value, $Res Function(ValidationFailure) _then) = _$ValidationFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ValidationFailureCopyWithImpl<$Res>
    implements $ValidationFailureCopyWith<$Res> {
  _$ValidationFailureCopyWithImpl(this._self, this._then);

  final ValidationFailure _self;
  final $Res Function(ValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PermissionFailure implements Failure {
  const PermissionFailure({required this.type, required this.permanentlyDenied});
  

 final  PermissionType type;
 final  bool permanentlyDenied;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionFailureCopyWith<PermissionFailure> get copyWith => _$PermissionFailureCopyWithImpl<PermissionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionFailure&&(identical(other.type, type) || other.type == type)&&(identical(other.permanentlyDenied, permanentlyDenied) || other.permanentlyDenied == permanentlyDenied));
}


@override
int get hashCode => Object.hash(runtimeType,type,permanentlyDenied);

@override
String toString() {
  return 'Failure.permission(type: $type, permanentlyDenied: $permanentlyDenied)';
}


}

/// @nodoc
abstract mixin class $PermissionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $PermissionFailureCopyWith(PermissionFailure value, $Res Function(PermissionFailure) _then) = _$PermissionFailureCopyWithImpl;
@useResult
$Res call({
 PermissionType type, bool permanentlyDenied
});




}
/// @nodoc
class _$PermissionFailureCopyWithImpl<$Res>
    implements $PermissionFailureCopyWith<$Res> {
  _$PermissionFailureCopyWithImpl(this._self, this._then);

  final PermissionFailure _self;
  final $Res Function(PermissionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? permanentlyDenied = null,}) {
  return _then(PermissionFailure(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PermissionType,permanentlyDenied: null == permanentlyDenied ? _self.permanentlyDenied : permanentlyDenied // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PaymentFailure implements Failure {
  const PaymentFailure({required this.message});
  

 final  String message;

/// Create a copy of Failure
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
  return 'Failure.payment(message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
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

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PaymentFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CacheFailure implements Failure {
  const CacheFailure({this.message});
  

 final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheFailureCopyWith<CacheFailure> get copyWith => _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cache(message: $message)';
}


}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(CacheFailure value, $Res Function(CacheFailure) _then) = _$CacheFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CacheFailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure _self;
  final $Res Function(CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CacheFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ParsingFailure implements Failure {
  const ParsingFailure({this.message});
  

 final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsingFailureCopyWith<ParsingFailure> get copyWith => _$ParsingFailureCopyWithImpl<ParsingFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsingFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.parsing(message: $message)';
}


}

/// @nodoc
abstract mixin class $ParsingFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ParsingFailureCopyWith(ParsingFailure value, $Res Function(ParsingFailure) _then) = _$ParsingFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ParsingFailureCopyWithImpl<$Res>
    implements $ParsingFailureCopyWith<$Res> {
  _$ParsingFailureCopyWithImpl(this._self, this._then);

  final ParsingFailure _self;
  final $Res Function(ParsingFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ParsingFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnexpectedFailure implements Failure {
  const UnexpectedFailure({this.message});
  

 final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedFailureCopyWith<UnexpectedFailure> get copyWith => _$UnexpectedFailureCopyWithImpl<UnexpectedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnexpectedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(UnexpectedFailure value, $Res Function(UnexpectedFailure) _then) = _$UnexpectedFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(this._self, this._then);

  final UnexpectedFailure _self;
  final $Res Function(UnexpectedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnexpectedFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class MapFailure implements Failure {
  const MapFailure(this.message);
  

 final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapFailureCopyWith<MapFailure> get copyWith => _$MapFailureCopyWithImpl<MapFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.mapError(message: $message)';
}


}

/// @nodoc
abstract mixin class $MapFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $MapFailureCopyWith(MapFailure value, $Res Function(MapFailure) _then) = _$MapFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MapFailureCopyWithImpl<$Res>
    implements $MapFailureCopyWith<$Res> {
  _$MapFailureCopyWithImpl(this._self, this._then);

  final MapFailure _self;
  final $Res Function(MapFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MapFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
