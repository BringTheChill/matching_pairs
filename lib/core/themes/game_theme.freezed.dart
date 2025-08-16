// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameTheme implements DiagnosticableTreeMixin {

 String get title;@JsonKey(name: 'card_symbol') String get cardSymbol; List<String> get symbols;@JsonKey(name: 'card_color') GameThemeColor get cardColor;
/// Create a copy of GameTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameThemeCopyWith<GameTheme> get copyWith => _$GameThemeCopyWithImpl<GameTheme>(this as GameTheme, _$identity);

  /// Serializes this GameTheme to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameTheme'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('cardSymbol', cardSymbol))..add(DiagnosticsProperty('symbols', symbols))..add(DiagnosticsProperty('cardColor', cardColor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameTheme&&(identical(other.title, title) || other.title == title)&&(identical(other.cardSymbol, cardSymbol) || other.cardSymbol == cardSymbol)&&const DeepCollectionEquality().equals(other.symbols, symbols)&&(identical(other.cardColor, cardColor) || other.cardColor == cardColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,cardSymbol,const DeepCollectionEquality().hash(symbols),cardColor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameTheme(title: $title, cardSymbol: $cardSymbol, symbols: $symbols, cardColor: $cardColor)';
}


}

/// @nodoc
abstract mixin class $GameThemeCopyWith<$Res>  {
  factory $GameThemeCopyWith(GameTheme value, $Res Function(GameTheme) _then) = _$GameThemeCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(name: 'card_symbol') String cardSymbol, List<String> symbols,@JsonKey(name: 'card_color') GameThemeColor cardColor
});


$GameThemeColorCopyWith<$Res> get cardColor;

}
/// @nodoc
class _$GameThemeCopyWithImpl<$Res>
    implements $GameThemeCopyWith<$Res> {
  _$GameThemeCopyWithImpl(this._self, this._then);

  final GameTheme _self;
  final $Res Function(GameTheme) _then;

/// Create a copy of GameTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? cardSymbol = null,Object? symbols = null,Object? cardColor = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cardSymbol: null == cardSymbol ? _self.cardSymbol : cardSymbol // ignore: cast_nullable_to_non_nullable
as String,symbols: null == symbols ? _self.symbols : symbols // ignore: cast_nullable_to_non_nullable
as List<String>,cardColor: null == cardColor ? _self.cardColor : cardColor // ignore: cast_nullable_to_non_nullable
as GameThemeColor,
  ));
}
/// Create a copy of GameTheme
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameThemeColorCopyWith<$Res> get cardColor {
  
  return $GameThemeColorCopyWith<$Res>(_self.cardColor, (value) {
    return _then(_self.copyWith(cardColor: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameTheme].
extension GameThemePatterns on GameTheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameTheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameTheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameTheme value)  $default,){
final _that = this;
switch (_that) {
case _GameTheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameTheme value)?  $default,){
final _that = this;
switch (_that) {
case _GameTheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(name: 'card_symbol')  String cardSymbol,  List<String> symbols, @JsonKey(name: 'card_color')  GameThemeColor cardColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameTheme() when $default != null:
return $default(_that.title,_that.cardSymbol,_that.symbols,_that.cardColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(name: 'card_symbol')  String cardSymbol,  List<String> symbols, @JsonKey(name: 'card_color')  GameThemeColor cardColor)  $default,) {final _that = this;
switch (_that) {
case _GameTheme():
return $default(_that.title,_that.cardSymbol,_that.symbols,_that.cardColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(name: 'card_symbol')  String cardSymbol,  List<String> symbols, @JsonKey(name: 'card_color')  GameThemeColor cardColor)?  $default,) {final _that = this;
switch (_that) {
case _GameTheme() when $default != null:
return $default(_that.title,_that.cardSymbol,_that.symbols,_that.cardColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameTheme extends GameTheme with DiagnosticableTreeMixin {
  const _GameTheme({required this.title, @JsonKey(name: 'card_symbol') required this.cardSymbol, required final  List<String> symbols, @JsonKey(name: 'card_color') required this.cardColor}): _symbols = symbols,super._();
  factory _GameTheme.fromJson(Map<String, dynamic> json) => _$GameThemeFromJson(json);

@override final  String title;
@override@JsonKey(name: 'card_symbol') final  String cardSymbol;
 final  List<String> _symbols;
@override List<String> get symbols {
  if (_symbols is EqualUnmodifiableListView) return _symbols;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symbols);
}

@override@JsonKey(name: 'card_color') final  GameThemeColor cardColor;

/// Create a copy of GameTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameThemeCopyWith<_GameTheme> get copyWith => __$GameThemeCopyWithImpl<_GameTheme>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameThemeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameTheme'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('cardSymbol', cardSymbol))..add(DiagnosticsProperty('symbols', symbols))..add(DiagnosticsProperty('cardColor', cardColor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameTheme&&(identical(other.title, title) || other.title == title)&&(identical(other.cardSymbol, cardSymbol) || other.cardSymbol == cardSymbol)&&const DeepCollectionEquality().equals(other._symbols, _symbols)&&(identical(other.cardColor, cardColor) || other.cardColor == cardColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,cardSymbol,const DeepCollectionEquality().hash(_symbols),cardColor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameTheme(title: $title, cardSymbol: $cardSymbol, symbols: $symbols, cardColor: $cardColor)';
}


}

/// @nodoc
abstract mixin class _$GameThemeCopyWith<$Res> implements $GameThemeCopyWith<$Res> {
  factory _$GameThemeCopyWith(_GameTheme value, $Res Function(_GameTheme) _then) = __$GameThemeCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(name: 'card_symbol') String cardSymbol, List<String> symbols,@JsonKey(name: 'card_color') GameThemeColor cardColor
});


@override $GameThemeColorCopyWith<$Res> get cardColor;

}
/// @nodoc
class __$GameThemeCopyWithImpl<$Res>
    implements _$GameThemeCopyWith<$Res> {
  __$GameThemeCopyWithImpl(this._self, this._then);

  final _GameTheme _self;
  final $Res Function(_GameTheme) _then;

/// Create a copy of GameTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? cardSymbol = null,Object? symbols = null,Object? cardColor = null,}) {
  return _then(_GameTheme(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cardSymbol: null == cardSymbol ? _self.cardSymbol : cardSymbol // ignore: cast_nullable_to_non_nullable
as String,symbols: null == symbols ? _self._symbols : symbols // ignore: cast_nullable_to_non_nullable
as List<String>,cardColor: null == cardColor ? _self.cardColor : cardColor // ignore: cast_nullable_to_non_nullable
as GameThemeColor,
  ));
}

/// Create a copy of GameTheme
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameThemeColorCopyWith<$Res> get cardColor {
  
  return $GameThemeColorCopyWith<$Res>(_self.cardColor, (value) {
    return _then(_self.copyWith(cardColor: value));
  });
}
}


/// @nodoc
mixin _$GameThemeColor implements DiagnosticableTreeMixin {

 double get red; double get green; double get blue;
/// Create a copy of GameThemeColor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameThemeColorCopyWith<GameThemeColor> get copyWith => _$GameThemeColorCopyWithImpl<GameThemeColor>(this as GameThemeColor, _$identity);

  /// Serializes this GameThemeColor to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameThemeColor'))
    ..add(DiagnosticsProperty('red', red))..add(DiagnosticsProperty('green', green))..add(DiagnosticsProperty('blue', blue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameThemeColor&&(identical(other.red, red) || other.red == red)&&(identical(other.green, green) || other.green == green)&&(identical(other.blue, blue) || other.blue == blue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,red,green,blue);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameThemeColor(red: $red, green: $green, blue: $blue)';
}


}

/// @nodoc
abstract mixin class $GameThemeColorCopyWith<$Res>  {
  factory $GameThemeColorCopyWith(GameThemeColor value, $Res Function(GameThemeColor) _then) = _$GameThemeColorCopyWithImpl;
@useResult
$Res call({
 double red, double green, double blue
});




}
/// @nodoc
class _$GameThemeColorCopyWithImpl<$Res>
    implements $GameThemeColorCopyWith<$Res> {
  _$GameThemeColorCopyWithImpl(this._self, this._then);

  final GameThemeColor _self;
  final $Res Function(GameThemeColor) _then;

/// Create a copy of GameThemeColor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? red = null,Object? green = null,Object? blue = null,}) {
  return _then(_self.copyWith(
red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as double,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as double,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GameThemeColor].
extension GameThemeColorPatterns on GameThemeColor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameThemeColor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameThemeColor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameThemeColor value)  $default,){
final _that = this;
switch (_that) {
case _GameThemeColor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameThemeColor value)?  $default,){
final _that = this;
switch (_that) {
case _GameThemeColor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double red,  double green,  double blue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameThemeColor() when $default != null:
return $default(_that.red,_that.green,_that.blue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double red,  double green,  double blue)  $default,) {final _that = this;
switch (_that) {
case _GameThemeColor():
return $default(_that.red,_that.green,_that.blue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double red,  double green,  double blue)?  $default,) {final _that = this;
switch (_that) {
case _GameThemeColor() when $default != null:
return $default(_that.red,_that.green,_that.blue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameThemeColor with DiagnosticableTreeMixin implements GameThemeColor {
  const _GameThemeColor({required this.red, required this.green, required this.blue});
  factory _GameThemeColor.fromJson(Map<String, dynamic> json) => _$GameThemeColorFromJson(json);

@override final  double red;
@override final  double green;
@override final  double blue;

/// Create a copy of GameThemeColor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameThemeColorCopyWith<_GameThemeColor> get copyWith => __$GameThemeColorCopyWithImpl<_GameThemeColor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameThemeColorToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameThemeColor'))
    ..add(DiagnosticsProperty('red', red))..add(DiagnosticsProperty('green', green))..add(DiagnosticsProperty('blue', blue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameThemeColor&&(identical(other.red, red) || other.red == red)&&(identical(other.green, green) || other.green == green)&&(identical(other.blue, blue) || other.blue == blue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,red,green,blue);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameThemeColor(red: $red, green: $green, blue: $blue)';
}


}

/// @nodoc
abstract mixin class _$GameThemeColorCopyWith<$Res> implements $GameThemeColorCopyWith<$Res> {
  factory _$GameThemeColorCopyWith(_GameThemeColor value, $Res Function(_GameThemeColor) _then) = __$GameThemeColorCopyWithImpl;
@override @useResult
$Res call({
 double red, double green, double blue
});




}
/// @nodoc
class __$GameThemeColorCopyWithImpl<$Res>
    implements _$GameThemeColorCopyWith<$Res> {
  __$GameThemeColorCopyWithImpl(this._self, this._then);

  final _GameThemeColor _self;
  final $Res Function(_GameThemeColor) _then;

/// Create a copy of GameThemeColor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? red = null,Object? green = null,Object? blue = null,}) {
  return _then(_GameThemeColor(
red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as double,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as double,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$GameThemeCollection implements DiagnosticableTreeMixin {

 List<GameTheme> get themes; int get selectedThemeIndex;
/// Create a copy of GameThemeCollection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameThemeCollectionCopyWith<GameThemeCollection> get copyWith => _$GameThemeCollectionCopyWithImpl<GameThemeCollection>(this as GameThemeCollection, _$identity);

  /// Serializes this GameThemeCollection to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameThemeCollection'))
    ..add(DiagnosticsProperty('themes', themes))..add(DiagnosticsProperty('selectedThemeIndex', selectedThemeIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameThemeCollection&&const DeepCollectionEquality().equals(other.themes, themes)&&(identical(other.selectedThemeIndex, selectedThemeIndex) || other.selectedThemeIndex == selectedThemeIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(themes),selectedThemeIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameThemeCollection(themes: $themes, selectedThemeIndex: $selectedThemeIndex)';
}


}

/// @nodoc
abstract mixin class $GameThemeCollectionCopyWith<$Res>  {
  factory $GameThemeCollectionCopyWith(GameThemeCollection value, $Res Function(GameThemeCollection) _then) = _$GameThemeCollectionCopyWithImpl;
@useResult
$Res call({
 List<GameTheme> themes, int selectedThemeIndex
});




}
/// @nodoc
class _$GameThemeCollectionCopyWithImpl<$Res>
    implements $GameThemeCollectionCopyWith<$Res> {
  _$GameThemeCollectionCopyWithImpl(this._self, this._then);

  final GameThemeCollection _self;
  final $Res Function(GameThemeCollection) _then;

/// Create a copy of GameThemeCollection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themes = null,Object? selectedThemeIndex = null,}) {
  return _then(_self.copyWith(
themes: null == themes ? _self.themes : themes // ignore: cast_nullable_to_non_nullable
as List<GameTheme>,selectedThemeIndex: null == selectedThemeIndex ? _self.selectedThemeIndex : selectedThemeIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GameThemeCollection].
extension GameThemeCollectionPatterns on GameThemeCollection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameThemeCollection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameThemeCollection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameThemeCollection value)  $default,){
final _that = this;
switch (_that) {
case _GameThemeCollection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameThemeCollection value)?  $default,){
final _that = this;
switch (_that) {
case _GameThemeCollection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GameTheme> themes,  int selectedThemeIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameThemeCollection() when $default != null:
return $default(_that.themes,_that.selectedThemeIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GameTheme> themes,  int selectedThemeIndex)  $default,) {final _that = this;
switch (_that) {
case _GameThemeCollection():
return $default(_that.themes,_that.selectedThemeIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GameTheme> themes,  int selectedThemeIndex)?  $default,) {final _that = this;
switch (_that) {
case _GameThemeCollection() when $default != null:
return $default(_that.themes,_that.selectedThemeIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameThemeCollection extends GameThemeCollection with DiagnosticableTreeMixin {
  const _GameThemeCollection({final  List<GameTheme> themes = const [], this.selectedThemeIndex = 0}): _themes = themes,super._();
  factory _GameThemeCollection.fromJson(Map<String, dynamic> json) => _$GameThemeCollectionFromJson(json);

 final  List<GameTheme> _themes;
@override@JsonKey() List<GameTheme> get themes {
  if (_themes is EqualUnmodifiableListView) return _themes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_themes);
}

@override@JsonKey() final  int selectedThemeIndex;

/// Create a copy of GameThemeCollection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameThemeCollectionCopyWith<_GameThemeCollection> get copyWith => __$GameThemeCollectionCopyWithImpl<_GameThemeCollection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameThemeCollectionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GameThemeCollection'))
    ..add(DiagnosticsProperty('themes', themes))..add(DiagnosticsProperty('selectedThemeIndex', selectedThemeIndex));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameThemeCollection&&const DeepCollectionEquality().equals(other._themes, _themes)&&(identical(other.selectedThemeIndex, selectedThemeIndex) || other.selectedThemeIndex == selectedThemeIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_themes),selectedThemeIndex);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GameThemeCollection(themes: $themes, selectedThemeIndex: $selectedThemeIndex)';
}


}

/// @nodoc
abstract mixin class _$GameThemeCollectionCopyWith<$Res> implements $GameThemeCollectionCopyWith<$Res> {
  factory _$GameThemeCollectionCopyWith(_GameThemeCollection value, $Res Function(_GameThemeCollection) _then) = __$GameThemeCollectionCopyWithImpl;
@override @useResult
$Res call({
 List<GameTheme> themes, int selectedThemeIndex
});




}
/// @nodoc
class __$GameThemeCollectionCopyWithImpl<$Res>
    implements _$GameThemeCollectionCopyWith<$Res> {
  __$GameThemeCollectionCopyWithImpl(this._self, this._then);

  final _GameThemeCollection _self;
  final $Res Function(_GameThemeCollection) _then;

/// Create a copy of GameThemeCollection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themes = null,Object? selectedThemeIndex = null,}) {
  return _then(_GameThemeCollection(
themes: null == themes ? _self._themes : themes // ignore: cast_nullable_to_non_nullable
as List<GameTheme>,selectedThemeIndex: null == selectedThemeIndex ? _self.selectedThemeIndex : selectedThemeIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
