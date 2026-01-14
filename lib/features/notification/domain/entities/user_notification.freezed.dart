// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserNotification {

 int get id;// user_notification_id
 int get userId; int get notificationId; bool get isRead; DateTime? get readAt; Notification get notification;
/// Create a copy of UserNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserNotificationCopyWith<UserNotification> get copyWith => _$UserNotificationCopyWithImpl<UserNotification>(this as UserNotification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,notificationId,isRead,readAt,notification);

@override
String toString() {
  return 'UserNotification(id: $id, userId: $userId, notificationId: $notificationId, isRead: $isRead, readAt: $readAt, notification: $notification)';
}


}

/// @nodoc
abstract mixin class $UserNotificationCopyWith<$Res>  {
  factory $UserNotificationCopyWith(UserNotification value, $Res Function(UserNotification) _then) = _$UserNotificationCopyWithImpl;
@useResult
$Res call({
 int id, int userId, int notificationId, bool isRead, DateTime? readAt, Notification notification
});


$NotificationCopyWith<$Res> get notification;

}
/// @nodoc
class _$UserNotificationCopyWithImpl<$Res>
    implements $UserNotificationCopyWith<$Res> {
  _$UserNotificationCopyWithImpl(this._self, this._then);

  final UserNotification _self;
  final $Res Function(UserNotification) _then;

/// Create a copy of UserNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? notificationId = null,Object? isRead = null,Object? readAt = freezed,Object? notification = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification,
  ));
}
/// Create a copy of UserNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res> get notification {
  
  return $NotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserNotification].
extension UserNotificationPatterns on UserNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserNotification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserNotification value)  $default,){
final _that = this;
switch (_that) {
case _UserNotification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserNotification value)?  $default,){
final _that = this;
switch (_that) {
case _UserNotification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  int notificationId,  bool isRead,  DateTime? readAt,  Notification notification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserNotification() when $default != null:
return $default(_that.id,_that.userId,_that.notificationId,_that.isRead,_that.readAt,_that.notification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  int notificationId,  bool isRead,  DateTime? readAt,  Notification notification)  $default,) {final _that = this;
switch (_that) {
case _UserNotification():
return $default(_that.id,_that.userId,_that.notificationId,_that.isRead,_that.readAt,_that.notification);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  int notificationId,  bool isRead,  DateTime? readAt,  Notification notification)?  $default,) {final _that = this;
switch (_that) {
case _UserNotification() when $default != null:
return $default(_that.id,_that.userId,_that.notificationId,_that.isRead,_that.readAt,_that.notification);case _:
  return null;

}
}

}

/// @nodoc


class _UserNotification implements UserNotification {
  const _UserNotification({required this.id, required this.userId, required this.notificationId, required this.isRead, this.readAt, required this.notification});
  

@override final  int id;
// user_notification_id
@override final  int userId;
@override final  int notificationId;
@override final  bool isRead;
@override final  DateTime? readAt;
@override final  Notification notification;

/// Create a copy of UserNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserNotificationCopyWith<_UserNotification> get copyWith => __$UserNotificationCopyWithImpl<_UserNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,notificationId,isRead,readAt,notification);

@override
String toString() {
  return 'UserNotification(id: $id, userId: $userId, notificationId: $notificationId, isRead: $isRead, readAt: $readAt, notification: $notification)';
}


}

/// @nodoc
abstract mixin class _$UserNotificationCopyWith<$Res> implements $UserNotificationCopyWith<$Res> {
  factory _$UserNotificationCopyWith(_UserNotification value, $Res Function(_UserNotification) _then) = __$UserNotificationCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, int notificationId, bool isRead, DateTime? readAt, Notification notification
});


@override $NotificationCopyWith<$Res> get notification;

}
/// @nodoc
class __$UserNotificationCopyWithImpl<$Res>
    implements _$UserNotificationCopyWith<$Res> {
  __$UserNotificationCopyWithImpl(this._self, this._then);

  final _UserNotification _self;
  final $Res Function(_UserNotification) _then;

/// Create a copy of UserNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? notificationId = null,Object? isRead = null,Object? readAt = freezed,Object? notification = null,}) {
  return _then(_UserNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as Notification,
  ));
}

/// Create a copy of UserNotification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCopyWith<$Res> get notification {
  
  return $NotificationCopyWith<$Res>(_self.notification, (value) {
    return _then(_self.copyWith(notification: value));
  });
}
}

// dart format on
