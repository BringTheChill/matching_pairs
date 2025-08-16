// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matching_pairs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchingPairsState {

 int get score; bool get isGameOverByTimeout; bool get isGameStarted; bool get isGameCompleted; List<GameCardData> get cards; List<String> get selectedCardIds; int get matchedPairs; int get attempts; int get totalPairs; int get timeRemaining; bool get isTimerActive;
/// Create a copy of MatchingPairsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchingPairsStateCopyWith<MatchingPairsState> get copyWith => _$MatchingPairsStateCopyWithImpl<MatchingPairsState>(this as MatchingPairsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchingPairsState&&(identical(other.score, score) || other.score == score)&&(identical(other.isGameOverByTimeout, isGameOverByTimeout) || other.isGameOverByTimeout == isGameOverByTimeout)&&(identical(other.isGameStarted, isGameStarted) || other.isGameStarted == isGameStarted)&&(identical(other.isGameCompleted, isGameCompleted) || other.isGameCompleted == isGameCompleted)&&const DeepCollectionEquality().equals(other.cards, cards)&&const DeepCollectionEquality().equals(other.selectedCardIds, selectedCardIds)&&(identical(other.matchedPairs, matchedPairs) || other.matchedPairs == matchedPairs)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.totalPairs, totalPairs) || other.totalPairs == totalPairs)&&(identical(other.timeRemaining, timeRemaining) || other.timeRemaining == timeRemaining)&&(identical(other.isTimerActive, isTimerActive) || other.isTimerActive == isTimerActive));
}


@override
int get hashCode => Object.hash(runtimeType,score,isGameOverByTimeout,isGameStarted,isGameCompleted,const DeepCollectionEquality().hash(cards),const DeepCollectionEquality().hash(selectedCardIds),matchedPairs,attempts,totalPairs,timeRemaining,isTimerActive);

@override
String toString() {
  return 'MatchingPairsState(score: $score, isGameOverByTimeout: $isGameOverByTimeout, isGameStarted: $isGameStarted, isGameCompleted: $isGameCompleted, cards: $cards, selectedCardIds: $selectedCardIds, matchedPairs: $matchedPairs, attempts: $attempts, totalPairs: $totalPairs, timeRemaining: $timeRemaining, isTimerActive: $isTimerActive)';
}


}

/// @nodoc
abstract mixin class $MatchingPairsStateCopyWith<$Res>  {
  factory $MatchingPairsStateCopyWith(MatchingPairsState value, $Res Function(MatchingPairsState) _then) = _$MatchingPairsStateCopyWithImpl;
@useResult
$Res call({
 int score, bool isGameOverByTimeout, bool isGameStarted, bool isGameCompleted, List<GameCardData> cards, List<String> selectedCardIds, int matchedPairs, int attempts, int totalPairs, int timeRemaining, bool isTimerActive
});




}
/// @nodoc
class _$MatchingPairsStateCopyWithImpl<$Res>
    implements $MatchingPairsStateCopyWith<$Res> {
  _$MatchingPairsStateCopyWithImpl(this._self, this._then);

  final MatchingPairsState _self;
  final $Res Function(MatchingPairsState) _then;

/// Create a copy of MatchingPairsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? isGameOverByTimeout = null,Object? isGameStarted = null,Object? isGameCompleted = null,Object? cards = null,Object? selectedCardIds = null,Object? matchedPairs = null,Object? attempts = null,Object? totalPairs = null,Object? timeRemaining = null,Object? isTimerActive = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isGameOverByTimeout: null == isGameOverByTimeout ? _self.isGameOverByTimeout : isGameOverByTimeout // ignore: cast_nullable_to_non_nullable
as bool,isGameStarted: null == isGameStarted ? _self.isGameStarted : isGameStarted // ignore: cast_nullable_to_non_nullable
as bool,isGameCompleted: null == isGameCompleted ? _self.isGameCompleted : isGameCompleted // ignore: cast_nullable_to_non_nullable
as bool,cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<GameCardData>,selectedCardIds: null == selectedCardIds ? _self.selectedCardIds : selectedCardIds // ignore: cast_nullable_to_non_nullable
as List<String>,matchedPairs: null == matchedPairs ? _self.matchedPairs : matchedPairs // ignore: cast_nullable_to_non_nullable
as int,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int,totalPairs: null == totalPairs ? _self.totalPairs : totalPairs // ignore: cast_nullable_to_non_nullable
as int,timeRemaining: null == timeRemaining ? _self.timeRemaining : timeRemaining // ignore: cast_nullable_to_non_nullable
as int,isTimerActive: null == isTimerActive ? _self.isTimerActive : isTimerActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchingPairsState].
extension MatchingPairsStatePatterns on MatchingPairsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchingPairsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchingPairsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchingPairsState value)  $default,){
final _that = this;
switch (_that) {
case _MatchingPairsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchingPairsState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchingPairsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  bool isGameOverByTimeout,  bool isGameStarted,  bool isGameCompleted,  List<GameCardData> cards,  List<String> selectedCardIds,  int matchedPairs,  int attempts,  int totalPairs,  int timeRemaining,  bool isTimerActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchingPairsState() when $default != null:
return $default(_that.score,_that.isGameOverByTimeout,_that.isGameStarted,_that.isGameCompleted,_that.cards,_that.selectedCardIds,_that.matchedPairs,_that.attempts,_that.totalPairs,_that.timeRemaining,_that.isTimerActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  bool isGameOverByTimeout,  bool isGameStarted,  bool isGameCompleted,  List<GameCardData> cards,  List<String> selectedCardIds,  int matchedPairs,  int attempts,  int totalPairs,  int timeRemaining,  bool isTimerActive)  $default,) {final _that = this;
switch (_that) {
case _MatchingPairsState():
return $default(_that.score,_that.isGameOverByTimeout,_that.isGameStarted,_that.isGameCompleted,_that.cards,_that.selectedCardIds,_that.matchedPairs,_that.attempts,_that.totalPairs,_that.timeRemaining,_that.isTimerActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  bool isGameOverByTimeout,  bool isGameStarted,  bool isGameCompleted,  List<GameCardData> cards,  List<String> selectedCardIds,  int matchedPairs,  int attempts,  int totalPairs,  int timeRemaining,  bool isTimerActive)?  $default,) {final _that = this;
switch (_that) {
case _MatchingPairsState() when $default != null:
return $default(_that.score,_that.isGameOverByTimeout,_that.isGameStarted,_that.isGameCompleted,_that.cards,_that.selectedCardIds,_that.matchedPairs,_that.attempts,_that.totalPairs,_that.timeRemaining,_that.isTimerActive);case _:
  return null;

}
}

}

/// @nodoc


class _MatchingPairsState extends MatchingPairsState {
  const _MatchingPairsState({this.score = 0, this.isGameOverByTimeout = false, this.isGameStarted = false, this.isGameCompleted = false, final  List<GameCardData> cards = const [], final  List<String> selectedCardIds = const [], this.matchedPairs = 0, this.attempts = 0, this.totalPairs = 0, this.timeRemaining = 30, this.isTimerActive = false}): _cards = cards,_selectedCardIds = selectedCardIds,super._();
  

@override@JsonKey() final  int score;
@override@JsonKey() final  bool isGameOverByTimeout;
@override@JsonKey() final  bool isGameStarted;
@override@JsonKey() final  bool isGameCompleted;
 final  List<GameCardData> _cards;
@override@JsonKey() List<GameCardData> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

 final  List<String> _selectedCardIds;
@override@JsonKey() List<String> get selectedCardIds {
  if (_selectedCardIds is EqualUnmodifiableListView) return _selectedCardIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedCardIds);
}

@override@JsonKey() final  int matchedPairs;
@override@JsonKey() final  int attempts;
@override@JsonKey() final  int totalPairs;
@override@JsonKey() final  int timeRemaining;
@override@JsonKey() final  bool isTimerActive;

/// Create a copy of MatchingPairsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchingPairsStateCopyWith<_MatchingPairsState> get copyWith => __$MatchingPairsStateCopyWithImpl<_MatchingPairsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchingPairsState&&(identical(other.score, score) || other.score == score)&&(identical(other.isGameOverByTimeout, isGameOverByTimeout) || other.isGameOverByTimeout == isGameOverByTimeout)&&(identical(other.isGameStarted, isGameStarted) || other.isGameStarted == isGameStarted)&&(identical(other.isGameCompleted, isGameCompleted) || other.isGameCompleted == isGameCompleted)&&const DeepCollectionEquality().equals(other._cards, _cards)&&const DeepCollectionEquality().equals(other._selectedCardIds, _selectedCardIds)&&(identical(other.matchedPairs, matchedPairs) || other.matchedPairs == matchedPairs)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.totalPairs, totalPairs) || other.totalPairs == totalPairs)&&(identical(other.timeRemaining, timeRemaining) || other.timeRemaining == timeRemaining)&&(identical(other.isTimerActive, isTimerActive) || other.isTimerActive == isTimerActive));
}


@override
int get hashCode => Object.hash(runtimeType,score,isGameOverByTimeout,isGameStarted,isGameCompleted,const DeepCollectionEquality().hash(_cards),const DeepCollectionEquality().hash(_selectedCardIds),matchedPairs,attempts,totalPairs,timeRemaining,isTimerActive);

@override
String toString() {
  return 'MatchingPairsState(score: $score, isGameOverByTimeout: $isGameOverByTimeout, isGameStarted: $isGameStarted, isGameCompleted: $isGameCompleted, cards: $cards, selectedCardIds: $selectedCardIds, matchedPairs: $matchedPairs, attempts: $attempts, totalPairs: $totalPairs, timeRemaining: $timeRemaining, isTimerActive: $isTimerActive)';
}


}

/// @nodoc
abstract mixin class _$MatchingPairsStateCopyWith<$Res> implements $MatchingPairsStateCopyWith<$Res> {
  factory _$MatchingPairsStateCopyWith(_MatchingPairsState value, $Res Function(_MatchingPairsState) _then) = __$MatchingPairsStateCopyWithImpl;
@override @useResult
$Res call({
 int score, bool isGameOverByTimeout, bool isGameStarted, bool isGameCompleted, List<GameCardData> cards, List<String> selectedCardIds, int matchedPairs, int attempts, int totalPairs, int timeRemaining, bool isTimerActive
});




}
/// @nodoc
class __$MatchingPairsStateCopyWithImpl<$Res>
    implements _$MatchingPairsStateCopyWith<$Res> {
  __$MatchingPairsStateCopyWithImpl(this._self, this._then);

  final _MatchingPairsState _self;
  final $Res Function(_MatchingPairsState) _then;

/// Create a copy of MatchingPairsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? isGameOverByTimeout = null,Object? isGameStarted = null,Object? isGameCompleted = null,Object? cards = null,Object? selectedCardIds = null,Object? matchedPairs = null,Object? attempts = null,Object? totalPairs = null,Object? timeRemaining = null,Object? isTimerActive = null,}) {
  return _then(_MatchingPairsState(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isGameOverByTimeout: null == isGameOverByTimeout ? _self.isGameOverByTimeout : isGameOverByTimeout // ignore: cast_nullable_to_non_nullable
as bool,isGameStarted: null == isGameStarted ? _self.isGameStarted : isGameStarted // ignore: cast_nullable_to_non_nullable
as bool,isGameCompleted: null == isGameCompleted ? _self.isGameCompleted : isGameCompleted // ignore: cast_nullable_to_non_nullable
as bool,cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<GameCardData>,selectedCardIds: null == selectedCardIds ? _self._selectedCardIds : selectedCardIds // ignore: cast_nullable_to_non_nullable
as List<String>,matchedPairs: null == matchedPairs ? _self.matchedPairs : matchedPairs // ignore: cast_nullable_to_non_nullable
as int,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int,totalPairs: null == totalPairs ? _self.totalPairs : totalPairs // ignore: cast_nullable_to_non_nullable
as int,timeRemaining: null == timeRemaining ? _self.timeRemaining : timeRemaining // ignore: cast_nullable_to_non_nullable
as int,isTimerActive: null == isTimerActive ? _self.isTimerActive : isTimerActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$GameCardData {

 String get id; String get symbol; bool get isMatched; bool get isFlipped;
/// Create a copy of GameCardData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCardDataCopyWith<GameCardData> get copyWith => _$GameCardDataCopyWithImpl<GameCardData>(this as GameCardData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameCardData&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.isMatched, isMatched) || other.isMatched == isMatched)&&(identical(other.isFlipped, isFlipped) || other.isFlipped == isFlipped));
}


@override
int get hashCode => Object.hash(runtimeType,id,symbol,isMatched,isFlipped);

@override
String toString() {
  return 'GameCardData(id: $id, symbol: $symbol, isMatched: $isMatched, isFlipped: $isFlipped)';
}


}

/// @nodoc
abstract mixin class $GameCardDataCopyWith<$Res>  {
  factory $GameCardDataCopyWith(GameCardData value, $Res Function(GameCardData) _then) = _$GameCardDataCopyWithImpl;
@useResult
$Res call({
 String id, String symbol, bool isMatched, bool isFlipped
});




}
/// @nodoc
class _$GameCardDataCopyWithImpl<$Res>
    implements $GameCardDataCopyWith<$Res> {
  _$GameCardDataCopyWithImpl(this._self, this._then);

  final GameCardData _self;
  final $Res Function(GameCardData) _then;

/// Create a copy of GameCardData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? symbol = null,Object? isMatched = null,Object? isFlipped = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,isMatched: null == isMatched ? _self.isMatched : isMatched // ignore: cast_nullable_to_non_nullable
as bool,isFlipped: null == isFlipped ? _self.isFlipped : isFlipped // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GameCardData].
extension GameCardDataPatterns on GameCardData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameCardData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameCardData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameCardData value)  $default,){
final _that = this;
switch (_that) {
case _GameCardData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameCardData value)?  $default,){
final _that = this;
switch (_that) {
case _GameCardData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String symbol,  bool isMatched,  bool isFlipped)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameCardData() when $default != null:
return $default(_that.id,_that.symbol,_that.isMatched,_that.isFlipped);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String symbol,  bool isMatched,  bool isFlipped)  $default,) {final _that = this;
switch (_that) {
case _GameCardData():
return $default(_that.id,_that.symbol,_that.isMatched,_that.isFlipped);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String symbol,  bool isMatched,  bool isFlipped)?  $default,) {final _that = this;
switch (_that) {
case _GameCardData() when $default != null:
return $default(_that.id,_that.symbol,_that.isMatched,_that.isFlipped);case _:
  return null;

}
}

}

/// @nodoc


class _GameCardData implements GameCardData {
  const _GameCardData({required this.id, required this.symbol, this.isMatched = false, this.isFlipped = false});
  

@override final  String id;
@override final  String symbol;
@override@JsonKey() final  bool isMatched;
@override@JsonKey() final  bool isFlipped;

/// Create a copy of GameCardData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameCardDataCopyWith<_GameCardData> get copyWith => __$GameCardDataCopyWithImpl<_GameCardData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameCardData&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.isMatched, isMatched) || other.isMatched == isMatched)&&(identical(other.isFlipped, isFlipped) || other.isFlipped == isFlipped));
}


@override
int get hashCode => Object.hash(runtimeType,id,symbol,isMatched,isFlipped);

@override
String toString() {
  return 'GameCardData(id: $id, symbol: $symbol, isMatched: $isMatched, isFlipped: $isFlipped)';
}


}

/// @nodoc
abstract mixin class _$GameCardDataCopyWith<$Res> implements $GameCardDataCopyWith<$Res> {
  factory _$GameCardDataCopyWith(_GameCardData value, $Res Function(_GameCardData) _then) = __$GameCardDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String symbol, bool isMatched, bool isFlipped
});




}
/// @nodoc
class __$GameCardDataCopyWithImpl<$Res>
    implements _$GameCardDataCopyWith<$Res> {
  __$GameCardDataCopyWithImpl(this._self, this._then);

  final _GameCardData _self;
  final $Res Function(_GameCardData) _then;

/// Create a copy of GameCardData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? symbol = null,Object? isMatched = null,Object? isFlipped = null,}) {
  return _then(_GameCardData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,isMatched: null == isMatched ? _self.isMatched : isMatched // ignore: cast_nullable_to_non_nullable
as bool,isFlipped: null == isFlipped ? _self.isFlipped : isFlipped // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
