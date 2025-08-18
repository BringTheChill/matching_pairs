// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeLoadingState {

 bool get isLoading; List<GameTheme> get themes; int get selectedThemeIndex; String? get error;
/// Create a copy of ThemeLoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeLoadingStateCopyWith<ThemeLoadingState> get copyWith => _$ThemeLoadingStateCopyWithImpl<ThemeLoadingState>(this as ThemeLoadingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeLoadingState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.themes, themes)&&(identical(other.selectedThemeIndex, selectedThemeIndex) || other.selectedThemeIndex == selectedThemeIndex)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(themes),selectedThemeIndex,error);

@override
String toString() {
  return 'ThemeLoadingState(isLoading: $isLoading, themes: $themes, selectedThemeIndex: $selectedThemeIndex, error: $error)';
}


}

/// @nodoc
abstract mixin class $ThemeLoadingStateCopyWith<$Res>  {
  factory $ThemeLoadingStateCopyWith(ThemeLoadingState value, $Res Function(ThemeLoadingState) _then) = _$ThemeLoadingStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<GameTheme> themes, int selectedThemeIndex, String? error
});




}
/// @nodoc
class _$ThemeLoadingStateCopyWithImpl<$Res>
    implements $ThemeLoadingStateCopyWith<$Res> {
  _$ThemeLoadingStateCopyWithImpl(this._self, this._then);

  final ThemeLoadingState _self;
  final $Res Function(ThemeLoadingState) _then;

/// Create a copy of ThemeLoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? themes = null,Object? selectedThemeIndex = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,themes: null == themes ? _self.themes : themes // ignore: cast_nullable_to_non_nullable
as List<GameTheme>,selectedThemeIndex: null == selectedThemeIndex ? _self.selectedThemeIndex : selectedThemeIndex // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeLoadingState].
extension ThemeLoadingStatePatterns on ThemeLoadingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeLoadingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeLoadingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeLoadingState value)  $default,){
final _that = this;
switch (_that) {
case _ThemeLoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeLoadingState value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeLoadingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<GameTheme> themes,  int selectedThemeIndex,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeLoadingState() when $default != null:
return $default(_that.isLoading,_that.themes,_that.selectedThemeIndex,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<GameTheme> themes,  int selectedThemeIndex,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ThemeLoadingState():
return $default(_that.isLoading,_that.themes,_that.selectedThemeIndex,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<GameTheme> themes,  int selectedThemeIndex,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ThemeLoadingState() when $default != null:
return $default(_that.isLoading,_that.themes,_that.selectedThemeIndex,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ThemeLoadingState extends ThemeLoadingState {
  const _ThemeLoadingState({this.isLoading = false, final  List<GameTheme> themes = const [], this.selectedThemeIndex = 0, this.error}): _themes = themes,super._();
  

@override@JsonKey() final  bool isLoading;
 final  List<GameTheme> _themes;
@override@JsonKey() List<GameTheme> get themes {
  if (_themes is EqualUnmodifiableListView) return _themes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_themes);
}

@override@JsonKey() final  int selectedThemeIndex;
@override final  String? error;

/// Create a copy of ThemeLoadingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeLoadingStateCopyWith<_ThemeLoadingState> get copyWith => __$ThemeLoadingStateCopyWithImpl<_ThemeLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeLoadingState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._themes, _themes)&&(identical(other.selectedThemeIndex, selectedThemeIndex) || other.selectedThemeIndex == selectedThemeIndex)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_themes),selectedThemeIndex,error);

@override
String toString() {
  return 'ThemeLoadingState(isLoading: $isLoading, themes: $themes, selectedThemeIndex: $selectedThemeIndex, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ThemeLoadingStateCopyWith<$Res> implements $ThemeLoadingStateCopyWith<$Res> {
  factory _$ThemeLoadingStateCopyWith(_ThemeLoadingState value, $Res Function(_ThemeLoadingState) _then) = __$ThemeLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<GameTheme> themes, int selectedThemeIndex, String? error
});




}
/// @nodoc
class __$ThemeLoadingStateCopyWithImpl<$Res>
    implements _$ThemeLoadingStateCopyWith<$Res> {
  __$ThemeLoadingStateCopyWithImpl(this._self, this._then);

  final _ThemeLoadingState _self;
  final $Res Function(_ThemeLoadingState) _then;

/// Create a copy of ThemeLoadingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? themes = null,Object? selectedThemeIndex = null,Object? error = freezed,}) {
  return _then(_ThemeLoadingState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,themes: null == themes ? _self._themes : themes // ignore: cast_nullable_to_non_nullable
as List<GameTheme>,selectedThemeIndex: null == selectedThemeIndex ? _self.selectedThemeIndex : selectedThemeIndex // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
