// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeStateLoading value)?  loading,TResult Function( HomeStateFailed value)?  failed,TResult Function( HomeStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeStateLoading() when loading != null:
return loading(_that);case HomeStateFailed() when failed != null:
return failed(_that);case HomeStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeStateLoading value)  loading,required TResult Function( HomeStateFailed value)  failed,required TResult Function( HomeStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case HomeStateLoading():
return loading(_that);case HomeStateFailed():
return failed(_that);case HomeStateLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeStateLoading value)?  loading,TResult? Function( HomeStateFailed value)?  failed,TResult? Function( HomeStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case HomeStateLoading() when loading != null:
return loading(_that);case HomeStateFailed() when failed != null:
return failed(_that);case HomeStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  failed,TResult Function( HomePageState state)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeStateLoading() when loading != null:
return loading();case HomeStateFailed() when failed != null:
return failed();case HomeStateLoaded() when loaded != null:
return loaded(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  failed,required TResult Function( HomePageState state)  loaded,}) {final _that = this;
switch (_that) {
case HomeStateLoading():
return loading();case HomeStateFailed():
return failed();case HomeStateLoaded():
return loaded(_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  failed,TResult? Function( HomePageState state)?  loaded,}) {final _that = this;
switch (_that) {
case HomeStateLoading() when loading != null:
return loading();case HomeStateFailed() when failed != null:
return failed();case HomeStateLoaded() when loaded != null:
return loaded(_that.state);case _:
  return null;

}
}

}

/// @nodoc


class HomeStateLoading implements HomeState {
  const HomeStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class HomeStateFailed implements HomeState {
  const HomeStateFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.failed()';
}


}




/// @nodoc


class HomeStateLoaded implements HomeState {
  const HomeStateLoaded(this.state);
  

 final  HomePageState state;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith => _$HomeStateLoadedCopyWithImpl<HomeStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateLoaded&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'HomeState.loaded(state: $state)';
}


}

/// @nodoc
abstract mixin class $HomeStateLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeStateLoadedCopyWith(HomeStateLoaded value, $Res Function(HomeStateLoaded) _then) = _$HomeStateLoadedCopyWithImpl;
@useResult
$Res call({
 HomePageState state
});


$HomePageStateCopyWith<$Res> get state;

}
/// @nodoc
class _$HomeStateLoadedCopyWithImpl<$Res>
    implements $HomeStateLoadedCopyWith<$Res> {
  _$HomeStateLoadedCopyWithImpl(this._self, this._then);

  final HomeStateLoaded _self;
  final $Res Function(HomeStateLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(HomeStateLoaded(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as HomePageState,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePageStateCopyWith<$Res> get state {
  
  return $HomePageStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

/// @nodoc
mixin _$HomePageState {

 int get page; bool get isFetchingMore; List<Breeds> get listBreeds;
/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageStateCopyWith<HomePageState> get copyWith => _$HomePageStateCopyWithImpl<HomePageState>(this as HomePageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState&&(identical(other.page, page) || other.page == page)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&const DeepCollectionEquality().equals(other.listBreeds, listBreeds));
}


@override
int get hashCode => Object.hash(runtimeType,page,isFetchingMore,const DeepCollectionEquality().hash(listBreeds));

@override
String toString() {
  return 'HomePageState(page: $page, isFetchingMore: $isFetchingMore, listBreeds: $listBreeds)';
}


}

/// @nodoc
abstract mixin class $HomePageStateCopyWith<$Res>  {
  factory $HomePageStateCopyWith(HomePageState value, $Res Function(HomePageState) _then) = _$HomePageStateCopyWithImpl;
@useResult
$Res call({
 int page, bool isFetchingMore, List<Breeds> listBreeds
});




}
/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._self, this._then);

  final HomePageState _self;
  final $Res Function(HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? isFetchingMore = null,Object? listBreeds = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,listBreeds: null == listBreeds ? _self.listBreeds : listBreeds // ignore: cast_nullable_to_non_nullable
as List<Breeds>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePageState value)  $default,){
final _that = this;
switch (_that) {
case _HomePageState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePageState value)?  $default,){
final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  bool isFetchingMore,  List<Breeds> listBreeds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
return $default(_that.page,_that.isFetchingMore,_that.listBreeds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  bool isFetchingMore,  List<Breeds> listBreeds)  $default,) {final _that = this;
switch (_that) {
case _HomePageState():
return $default(_that.page,_that.isFetchingMore,_that.listBreeds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  bool isFetchingMore,  List<Breeds> listBreeds)?  $default,) {final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
return $default(_that.page,_that.isFetchingMore,_that.listBreeds);case _:
  return null;

}
}

}

/// @nodoc


class _HomePageState implements HomePageState {
   _HomePageState({this.page = 0, this.isFetchingMore = false, required final  List<Breeds> listBreeds}): _listBreeds = listBreeds;
  

@override@JsonKey() final  int page;
@override@JsonKey() final  bool isFetchingMore;
 final  List<Breeds> _listBreeds;
@override List<Breeds> get listBreeds {
  if (_listBreeds is EqualUnmodifiableListView) return _listBreeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listBreeds);
}


/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePageStateCopyWith<_HomePageState> get copyWith => __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePageState&&(identical(other.page, page) || other.page == page)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&const DeepCollectionEquality().equals(other._listBreeds, _listBreeds));
}


@override
int get hashCode => Object.hash(runtimeType,page,isFetchingMore,const DeepCollectionEquality().hash(_listBreeds));

@override
String toString() {
  return 'HomePageState(page: $page, isFetchingMore: $isFetchingMore, listBreeds: $listBreeds)';
}


}

/// @nodoc
abstract mixin class _$HomePageStateCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(_HomePageState value, $Res Function(_HomePageState) _then) = __$HomePageStateCopyWithImpl;
@override @useResult
$Res call({
 int page, bool isFetchingMore, List<Breeds> listBreeds
});




}
/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(this._self, this._then);

  final _HomePageState _self;
  final $Res Function(_HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? isFetchingMore = null,Object? listBreeds = null,}) {
  return _then(_HomePageState(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,listBreeds: null == listBreeds ? _self._listBreeds : listBreeds // ignore: cast_nullable_to_non_nullable
as List<Breeds>,
  ));
}


}

// dart format on
