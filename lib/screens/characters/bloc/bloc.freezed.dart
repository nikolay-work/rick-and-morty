// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CharactersEventTearOff {
  const _$CharactersEventTearOff();

// ignore: unused_element
  _CharactersChangeViewEvent change() {
    return const _CharactersChangeViewEvent();
  }

// ignore: unused_element
  _CharactersInitialEvent initial() {
    return const _CharactersInitialEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult change(),
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult change(),
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult change(_CharactersChangeViewEvent value),
    @required TResult initial(_CharactersInitialEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult change(_CharactersChangeViewEvent value),
    TResult initial(_CharactersInitialEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  final CharactersEvent _value;
  // ignore: unused_field
  final $Res Function(CharactersEvent) _then;
}

/// @nodoc
abstract class _$CharactersChangeViewEventCopyWith<$Res> {
  factory _$CharactersChangeViewEventCopyWith(_CharactersChangeViewEvent value,
          $Res Function(_CharactersChangeViewEvent) then) =
      __$CharactersChangeViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersChangeViewEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$CharactersChangeViewEventCopyWith<$Res> {
  __$CharactersChangeViewEventCopyWithImpl(_CharactersChangeViewEvent _value,
      $Res Function(_CharactersChangeViewEvent) _then)
      : super(_value, (v) => _then(v as _CharactersChangeViewEvent));

  @override
  _CharactersChangeViewEvent get _value =>
      super._value as _CharactersChangeViewEvent;
}

/// @nodoc
class _$_CharactersChangeViewEvent
    with DiagnosticableTreeMixin
    implements _CharactersChangeViewEvent {
  const _$_CharactersChangeViewEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.change()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersEvent.change'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersChangeViewEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult change(),
    @required TResult initial(),
  }) {
    assert(change != null);
    assert(initial != null);
    return change();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult change(),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult change(_CharactersChangeViewEvent value),
    @required TResult initial(_CharactersInitialEvent value),
  }) {
    assert(change != null);
    assert(initial != null);
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult change(_CharactersChangeViewEvent value),
    TResult initial(_CharactersInitialEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _CharactersChangeViewEvent implements CharactersEvent {
  const factory _CharactersChangeViewEvent() = _$_CharactersChangeViewEvent;
}

/// @nodoc
abstract class _$CharactersInitialEventCopyWith<$Res> {
  factory _$CharactersInitialEventCopyWith(_CharactersInitialEvent value,
          $Res Function(_CharactersInitialEvent) then) =
      __$CharactersInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersInitialEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$CharactersInitialEventCopyWith<$Res> {
  __$CharactersInitialEventCopyWithImpl(_CharactersInitialEvent _value,
      $Res Function(_CharactersInitialEvent) _then)
      : super(_value, (v) => _then(v as _CharactersInitialEvent));

  @override
  _CharactersInitialEvent get _value => super._value as _CharactersInitialEvent;
}

/// @nodoc
class _$_CharactersInitialEvent
    with DiagnosticableTreeMixin
    implements _CharactersInitialEvent {
  const _$_CharactersInitialEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult change(),
    @required TResult initial(),
  }) {
    assert(change != null);
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult change(),
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult change(_CharactersChangeViewEvent value),
    @required TResult initial(_CharactersInitialEvent value),
  }) {
    assert(change != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult change(_CharactersChangeViewEvent value),
    TResult initial(_CharactersInitialEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CharactersInitialEvent implements CharactersEvent {
  const factory _CharactersInitialEvent() = _$_CharactersInitialEvent;
}

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

// ignore: unused_element
  _CharactersViewState view() {
    return const _CharactersViewState();
  }

// ignore: unused_element
  _CharactersLoadingState loading() {
    return const _CharactersLoadingState();
  }

// ignore: unused_element
  _CharactersDataState data({List<Datum> charactersList, bool isGrid}) {
    return _CharactersDataState(
      charactersList: charactersList,
      isGrid: isGrid,
    );
  }

// ignore: unused_element
  _CharactersErrorState error() {
    return const _CharactersErrorState();
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult view(),
    @required TResult loading(),
    @required TResult data(List<Datum> charactersList, bool isGrid),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult view(),
    TResult loading(),
    TResult data(List<Datum> charactersList, bool isGrid),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult view(_CharactersViewState value),
    @required TResult loading(_CharactersLoadingState value),
    @required TResult data(_CharactersDataState value),
    @required TResult error(_CharactersErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult view(_CharactersViewState value),
    TResult loading(_CharactersLoadingState value),
    TResult data(_CharactersDataState value),
    TResult error(_CharactersErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class _$CharactersViewStateCopyWith<$Res> {
  factory _$CharactersViewStateCopyWith(_CharactersViewState value,
          $Res Function(_CharactersViewState) then) =
      __$CharactersViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersViewStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersViewStateCopyWith<$Res> {
  __$CharactersViewStateCopyWithImpl(
      _CharactersViewState _value, $Res Function(_CharactersViewState) _then)
      : super(_value, (v) => _then(v as _CharactersViewState));

  @override
  _CharactersViewState get _value => super._value as _CharactersViewState;
}

/// @nodoc
class _$_CharactersViewState
    with DiagnosticableTreeMixin
    implements _CharactersViewState {
  const _$_CharactersViewState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.view()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersState.view'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersViewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult view(),
    @required TResult loading(),
    @required TResult data(List<Datum> charactersList, bool isGrid),
    @required TResult error(),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return view();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult view(),
    TResult loading(),
    TResult data(List<Datum> charactersList, bool isGrid),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult view(_CharactersViewState value),
    @required TResult loading(_CharactersLoadingState value),
    @required TResult data(_CharactersDataState value),
    @required TResult error(_CharactersErrorState value),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return view(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult view(_CharactersViewState value),
    TResult loading(_CharactersLoadingState value),
    TResult data(_CharactersDataState value),
    TResult error(_CharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class _CharactersViewState implements CharactersState {
  const factory _CharactersViewState() = _$_CharactersViewState;
}

/// @nodoc
abstract class _$CharactersLoadingStateCopyWith<$Res> {
  factory _$CharactersLoadingStateCopyWith(_CharactersLoadingState value,
          $Res Function(_CharactersLoadingState) then) =
      __$CharactersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersLoadingStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersLoadingStateCopyWith<$Res> {
  __$CharactersLoadingStateCopyWithImpl(_CharactersLoadingState _value,
      $Res Function(_CharactersLoadingState) _then)
      : super(_value, (v) => _then(v as _CharactersLoadingState));

  @override
  _CharactersLoadingState get _value => super._value as _CharactersLoadingState;
}

/// @nodoc
class _$_CharactersLoadingState
    with DiagnosticableTreeMixin
    implements _CharactersLoadingState {
  const _$_CharactersLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult view(),
    @required TResult loading(),
    @required TResult data(List<Datum> charactersList, bool isGrid),
    @required TResult error(),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult view(),
    TResult loading(),
    TResult data(List<Datum> charactersList, bool isGrid),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult view(_CharactersViewState value),
    @required TResult loading(_CharactersLoadingState value),
    @required TResult data(_CharactersDataState value),
    @required TResult error(_CharactersErrorState value),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult view(_CharactersViewState value),
    TResult loading(_CharactersLoadingState value),
    TResult data(_CharactersDataState value),
    TResult error(_CharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadingState implements CharactersState {
  const factory _CharactersLoadingState() = _$_CharactersLoadingState;
}

/// @nodoc
abstract class _$CharactersDataStateCopyWith<$Res> {
  factory _$CharactersDataStateCopyWith(_CharactersDataState value,
          $Res Function(_CharactersDataState) then) =
      __$CharactersDataStateCopyWithImpl<$Res>;
  $Res call({List<Datum> charactersList, bool isGrid});
}

/// @nodoc
class __$CharactersDataStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersDataStateCopyWith<$Res> {
  __$CharactersDataStateCopyWithImpl(
      _CharactersDataState _value, $Res Function(_CharactersDataState) _then)
      : super(_value, (v) => _then(v as _CharactersDataState));

  @override
  _CharactersDataState get _value => super._value as _CharactersDataState;

  @override
  $Res call({
    Object charactersList = freezed,
    Object isGrid = freezed,
  }) {
    return _then(_CharactersDataState(
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList as List<Datum>,
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

/// @nodoc
class _$_CharactersDataState
    with DiagnosticableTreeMixin
    implements _CharactersDataState {
  const _$_CharactersDataState({this.charactersList, this.isGrid});

  @override
  final List<Datum> charactersList;
  @override
  final bool isGrid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.data(charactersList: $charactersList, isGrid: $isGrid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.data'))
      ..add(DiagnosticsProperty('charactersList', charactersList))
      ..add(DiagnosticsProperty('isGrid', isGrid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersDataState &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersList) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$CharactersDataStateCopyWith<_CharactersDataState> get copyWith =>
      __$CharactersDataStateCopyWithImpl<_CharactersDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult view(),
    @required TResult loading(),
    @required TResult data(List<Datum> charactersList, bool isGrid),
    @required TResult error(),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(charactersList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult view(),
    TResult loading(),
    TResult data(List<Datum> charactersList, bool isGrid),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(charactersList, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult view(_CharactersViewState value),
    @required TResult loading(_CharactersLoadingState value),
    @required TResult data(_CharactersDataState value),
    @required TResult error(_CharactersErrorState value),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult view(_CharactersViewState value),
    TResult loading(_CharactersLoadingState value),
    TResult data(_CharactersDataState value),
    TResult error(_CharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _CharactersDataState implements CharactersState {
  const factory _CharactersDataState(
      {List<Datum> charactersList, bool isGrid}) = _$_CharactersDataState;

  List<Datum> get charactersList;
  bool get isGrid;
  @JsonKey(ignore: true)
  _$CharactersDataStateCopyWith<_CharactersDataState> get copyWith;
}

/// @nodoc
abstract class _$CharactersErrorStateCopyWith<$Res> {
  factory _$CharactersErrorStateCopyWith(_CharactersErrorState value,
          $Res Function(_CharactersErrorState) then) =
      __$CharactersErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersErrorStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersErrorStateCopyWith<$Res> {
  __$CharactersErrorStateCopyWithImpl(
      _CharactersErrorState _value, $Res Function(_CharactersErrorState) _then)
      : super(_value, (v) => _then(v as _CharactersErrorState));

  @override
  _CharactersErrorState get _value => super._value as _CharactersErrorState;
}

/// @nodoc
class _$_CharactersErrorState
    with DiagnosticableTreeMixin
    implements _CharactersErrorState {
  const _$_CharactersErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult view(),
    @required TResult loading(),
    @required TResult data(List<Datum> charactersList, bool isGrid),
    @required TResult error(),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult view(),
    TResult loading(),
    TResult data(List<Datum> charactersList, bool isGrid),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult view(_CharactersViewState value),
    @required TResult loading(_CharactersLoadingState value),
    @required TResult data(_CharactersDataState value),
    @required TResult error(_CharactersErrorState value),
  }) {
    assert(view != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult view(_CharactersViewState value),
    TResult loading(_CharactersLoadingState value),
    TResult data(_CharactersDataState value),
    TResult error(_CharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CharactersErrorState implements CharactersState {
  const factory _CharactersErrorState() = _$_CharactersErrorState;
}
