// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResponseFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure()';
}


}

/// @nodoc
class $ResponseFailureCopyWith<$Res>  {
$ResponseFailureCopyWith(ResponseFailure _, $Res Function(ResponseFailure) __);
}


/// Adds pattern-matching-related methods to [ResponseFailure].
extension ResponseFailurePatterns on ResponseFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ResponseFailureNotFound value)?  notFound,TResult Function( _ResponseFailureNotVerified value)?  notVerified,TResult Function( _ResponseFailureNetwork value)?  network,TResult Function( _ResponseFailureUnauthorized value)?  unauthorized,TResult Function( _ResponseFailureLinkDevice value)?  linkDevice,TResult Function( _ResponseFailureDiseableAccount value)?  diseableAccount,TResult Function( _ResponseFailureLockedDevice value)?  lockedDevice,TResult Function( _ResponseFailureUnknow value)?  unknow,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseFailureNotFound() when notFound != null:
return notFound(_that);case _ResponseFailureNotVerified() when notVerified != null:
return notVerified(_that);case _ResponseFailureNetwork() when network != null:
return network(_that);case _ResponseFailureUnauthorized() when unauthorized != null:
return unauthorized(_that);case _ResponseFailureLinkDevice() when linkDevice != null:
return linkDevice(_that);case _ResponseFailureDiseableAccount() when diseableAccount != null:
return diseableAccount(_that);case _ResponseFailureLockedDevice() when lockedDevice != null:
return lockedDevice(_that);case _ResponseFailureUnknow() when unknow != null:
return unknow(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ResponseFailureNotFound value)  notFound,required TResult Function( _ResponseFailureNotVerified value)  notVerified,required TResult Function( _ResponseFailureNetwork value)  network,required TResult Function( _ResponseFailureUnauthorized value)  unauthorized,required TResult Function( _ResponseFailureLinkDevice value)  linkDevice,required TResult Function( _ResponseFailureDiseableAccount value)  diseableAccount,required TResult Function( _ResponseFailureLockedDevice value)  lockedDevice,required TResult Function( _ResponseFailureUnknow value)  unknow,}){
final _that = this;
switch (_that) {
case _ResponseFailureNotFound():
return notFound(_that);case _ResponseFailureNotVerified():
return notVerified(_that);case _ResponseFailureNetwork():
return network(_that);case _ResponseFailureUnauthorized():
return unauthorized(_that);case _ResponseFailureLinkDevice():
return linkDevice(_that);case _ResponseFailureDiseableAccount():
return diseableAccount(_that);case _ResponseFailureLockedDevice():
return lockedDevice(_that);case _ResponseFailureUnknow():
return unknow(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ResponseFailureNotFound value)?  notFound,TResult? Function( _ResponseFailureNotVerified value)?  notVerified,TResult? Function( _ResponseFailureNetwork value)?  network,TResult? Function( _ResponseFailureUnauthorized value)?  unauthorized,TResult? Function( _ResponseFailureLinkDevice value)?  linkDevice,TResult? Function( _ResponseFailureDiseableAccount value)?  diseableAccount,TResult? Function( _ResponseFailureLockedDevice value)?  lockedDevice,TResult? Function( _ResponseFailureUnknow value)?  unknow,}){
final _that = this;
switch (_that) {
case _ResponseFailureNotFound() when notFound != null:
return notFound(_that);case _ResponseFailureNotVerified() when notVerified != null:
return notVerified(_that);case _ResponseFailureNetwork() when network != null:
return network(_that);case _ResponseFailureUnauthorized() when unauthorized != null:
return unauthorized(_that);case _ResponseFailureLinkDevice() when linkDevice != null:
return linkDevice(_that);case _ResponseFailureDiseableAccount() when diseableAccount != null:
return diseableAccount(_that);case _ResponseFailureLockedDevice() when lockedDevice != null:
return lockedDevice(_that);case _ResponseFailureUnknow() when unknow != null:
return unknow(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notFound,TResult Function()?  notVerified,TResult Function()?  network,TResult Function()?  unauthorized,TResult Function()?  linkDevice,TResult Function()?  diseableAccount,TResult Function()?  lockedDevice,TResult Function()?  unknow,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseFailureNotFound() when notFound != null:
return notFound();case _ResponseFailureNotVerified() when notVerified != null:
return notVerified();case _ResponseFailureNetwork() when network != null:
return network();case _ResponseFailureUnauthorized() when unauthorized != null:
return unauthorized();case _ResponseFailureLinkDevice() when linkDevice != null:
return linkDevice();case _ResponseFailureDiseableAccount() when diseableAccount != null:
return diseableAccount();case _ResponseFailureLockedDevice() when lockedDevice != null:
return lockedDevice();case _ResponseFailureUnknow() when unknow != null:
return unknow();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notFound,required TResult Function()  notVerified,required TResult Function()  network,required TResult Function()  unauthorized,required TResult Function()  linkDevice,required TResult Function()  diseableAccount,required TResult Function()  lockedDevice,required TResult Function()  unknow,}) {final _that = this;
switch (_that) {
case _ResponseFailureNotFound():
return notFound();case _ResponseFailureNotVerified():
return notVerified();case _ResponseFailureNetwork():
return network();case _ResponseFailureUnauthorized():
return unauthorized();case _ResponseFailureLinkDevice():
return linkDevice();case _ResponseFailureDiseableAccount():
return diseableAccount();case _ResponseFailureLockedDevice():
return lockedDevice();case _ResponseFailureUnknow():
return unknow();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notFound,TResult? Function()?  notVerified,TResult? Function()?  network,TResult? Function()?  unauthorized,TResult? Function()?  linkDevice,TResult? Function()?  diseableAccount,TResult? Function()?  lockedDevice,TResult? Function()?  unknow,}) {final _that = this;
switch (_that) {
case _ResponseFailureNotFound() when notFound != null:
return notFound();case _ResponseFailureNotVerified() when notVerified != null:
return notVerified();case _ResponseFailureNetwork() when network != null:
return network();case _ResponseFailureUnauthorized() when unauthorized != null:
return unauthorized();case _ResponseFailureLinkDevice() when linkDevice != null:
return linkDevice();case _ResponseFailureDiseableAccount() when diseableAccount != null:
return diseableAccount();case _ResponseFailureLockedDevice() when lockedDevice != null:
return lockedDevice();case _ResponseFailureUnknow() when unknow != null:
return unknow();case _:
  return null;

}
}

}

/// @nodoc


class _ResponseFailureNotFound implements ResponseFailure {
   _ResponseFailureNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.notFound()';
}


}




/// @nodoc


class _ResponseFailureNotVerified implements ResponseFailure {
   _ResponseFailureNotVerified();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureNotVerified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.notVerified()';
}


}




/// @nodoc


class _ResponseFailureNetwork implements ResponseFailure {
   _ResponseFailureNetwork();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureNetwork);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.network()';
}


}




/// @nodoc


class _ResponseFailureUnauthorized implements ResponseFailure {
   _ResponseFailureUnauthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureUnauthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.unauthorized()';
}


}




/// @nodoc


class _ResponseFailureLinkDevice implements ResponseFailure {
   _ResponseFailureLinkDevice();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureLinkDevice);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.linkDevice()';
}


}




/// @nodoc


class _ResponseFailureDiseableAccount implements ResponseFailure {
   _ResponseFailureDiseableAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureDiseableAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.diseableAccount()';
}


}




/// @nodoc


class _ResponseFailureLockedDevice implements ResponseFailure {
   _ResponseFailureLockedDevice();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureLockedDevice);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.lockedDevice()';
}


}




/// @nodoc


class _ResponseFailureUnknow implements ResponseFailure {
   _ResponseFailureUnknow();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseFailureUnknow);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResponseFailure.unknow()';
}


}




// dart format on
