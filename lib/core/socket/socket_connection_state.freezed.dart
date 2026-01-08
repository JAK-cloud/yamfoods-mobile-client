// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocketConnectionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketConnectionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketConnectionState()';
}


}

/// @nodoc
class $SocketConnectionStateCopyWith<$Res>  {
$SocketConnectionStateCopyWith(SocketConnectionState _, $Res Function(SocketConnectionState) __);
}


/// Adds pattern-matching-related methods to [SocketConnectionState].
extension SocketConnectionStatePatterns on SocketConnectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Connecting value)?  connecting,TResult Function( _Connected value)?  connected,TResult Function( _Disconnected value)?  disconnected,TResult Function( _Error value)?  error,TResult Function( _Reconnecting value)?  reconnecting,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Connecting() when connecting != null:
return connecting(_that);case _Connected() when connected != null:
return connected(_that);case _Disconnected() when disconnected != null:
return disconnected(_that);case _Error() when error != null:
return error(_that);case _Reconnecting() when reconnecting != null:
return reconnecting(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Connecting value)  connecting,required TResult Function( _Connected value)  connected,required TResult Function( _Disconnected value)  disconnected,required TResult Function( _Error value)  error,required TResult Function( _Reconnecting value)  reconnecting,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Connecting():
return connecting(_that);case _Connected():
return connected(_that);case _Disconnected():
return disconnected(_that);case _Error():
return error(_that);case _Reconnecting():
return reconnecting(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Connecting value)?  connecting,TResult? Function( _Connected value)?  connected,TResult? Function( _Disconnected value)?  disconnected,TResult? Function( _Error value)?  error,TResult? Function( _Reconnecting value)?  reconnecting,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Connecting() when connecting != null:
return connecting(_that);case _Connected() when connected != null:
return connected(_that);case _Disconnected() when disconnected != null:
return disconnected(_that);case _Error() when error != null:
return error(_that);case _Reconnecting() when reconnecting != null:
return reconnecting(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  connecting,TResult Function()?  connected,TResult Function()?  disconnected,TResult Function( String message)?  error,TResult Function( int attempt)?  reconnecting,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Connecting() when connecting != null:
return connecting();case _Connected() when connected != null:
return connected();case _Disconnected() when disconnected != null:
return disconnected();case _Error() when error != null:
return error(_that.message);case _Reconnecting() when reconnecting != null:
return reconnecting(_that.attempt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  connecting,required TResult Function()  connected,required TResult Function()  disconnected,required TResult Function( String message)  error,required TResult Function( int attempt)  reconnecting,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Connecting():
return connecting();case _Connected():
return connected();case _Disconnected():
return disconnected();case _Error():
return error(_that.message);case _Reconnecting():
return reconnecting(_that.attempt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  connecting,TResult? Function()?  connected,TResult? Function()?  disconnected,TResult? Function( String message)?  error,TResult? Function( int attempt)?  reconnecting,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Connecting() when connecting != null:
return connecting();case _Connected() when connected != null:
return connected();case _Disconnected() when disconnected != null:
return disconnected();case _Error() when error != null:
return error(_that.message);case _Reconnecting() when reconnecting != null:
return reconnecting(_that.attempt);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SocketConnectionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketConnectionState.initial()';
}


}




/// @nodoc


class _Connecting implements SocketConnectionState {
  const _Connecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketConnectionState.connecting()';
}


}




/// @nodoc


class _Connected implements SocketConnectionState {
  const _Connected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketConnectionState.connected()';
}


}




/// @nodoc


class _Disconnected implements SocketConnectionState {
  const _Disconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Disconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocketConnectionState.disconnected()';
}


}




/// @nodoc


class _Error implements SocketConnectionState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of SocketConnectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SocketConnectionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SocketConnectionStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SocketConnectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Reconnecting implements SocketConnectionState {
  const _Reconnecting({required this.attempt});
  

 final  int attempt;

/// Create a copy of SocketConnectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconnectingCopyWith<_Reconnecting> get copyWith => __$ReconnectingCopyWithImpl<_Reconnecting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reconnecting&&(identical(other.attempt, attempt) || other.attempt == attempt));
}


@override
int get hashCode => Object.hash(runtimeType,attempt);

@override
String toString() {
  return 'SocketConnectionState.reconnecting(attempt: $attempt)';
}


}

/// @nodoc
abstract mixin class _$ReconnectingCopyWith<$Res> implements $SocketConnectionStateCopyWith<$Res> {
  factory _$ReconnectingCopyWith(_Reconnecting value, $Res Function(_Reconnecting) _then) = __$ReconnectingCopyWithImpl;
@useResult
$Res call({
 int attempt
});




}
/// @nodoc
class __$ReconnectingCopyWithImpl<$Res>
    implements _$ReconnectingCopyWith<$Res> {
  __$ReconnectingCopyWithImpl(this._self, this._then);

  final _Reconnecting _self;
  final $Res Function(_Reconnecting) _then;

/// Create a copy of SocketConnectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attempt = null,}) {
  return _then(_Reconnecting(
attempt: null == attempt ? _self.attempt : attempt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
