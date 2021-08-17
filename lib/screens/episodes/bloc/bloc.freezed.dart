// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EpisodesEventTearOff {
  const _$EpisodesEventTearOff();

// ignore: unused_element
  _EpisodesInitialEvent initial() {
    return const _EpisodesInitialEvent();
  }

// ignore: unused_element
  _EpisodesChangeSeasonEvent changeSeason({@required int currentSeasonId}) {
    return _EpisodesChangeSeasonEvent(
      currentSeasonId: currentSeasonId,
    );
  }

// ignore: unused_element
  _EpisodesSearchEvent search({@required String searchString}) {
    return _EpisodesSearchEvent(
      searchString: searchString,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodesEvent = _$EpisodesEventTearOff();

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult changeSeason(int currentSeasonId),
    @required TResult search(String searchString),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult changeSeason(int currentSeasonId),
    TResult search(String searchString),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_EpisodesInitialEvent value),
    @required TResult changeSeason(_EpisodesChangeSeasonEvent value),
    @required TResult search(_EpisodesSearchEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_EpisodesInitialEvent value),
    TResult changeSeason(_EpisodesChangeSeasonEvent value),
    TResult search(_EpisodesSearchEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  final EpisodesEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesEvent) _then;
}

/// @nodoc
abstract class _$EpisodesInitialEventCopyWith<$Res> {
  factory _$EpisodesInitialEventCopyWith(_EpisodesInitialEvent value,
          $Res Function(_EpisodesInitialEvent) then) =
      __$EpisodesInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$EpisodesInitialEventCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$EpisodesInitialEventCopyWith<$Res> {
  __$EpisodesInitialEventCopyWithImpl(
      _EpisodesInitialEvent _value, $Res Function(_EpisodesInitialEvent) _then)
      : super(_value, (v) => _then(v as _EpisodesInitialEvent));

  @override
  _EpisodesInitialEvent get _value => super._value as _EpisodesInitialEvent;
}

/// @nodoc
class _$_EpisodesInitialEvent
    with DiagnosticableTreeMixin
    implements _EpisodesInitialEvent {
  const _$_EpisodesInitialEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodesEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EpisodesInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult changeSeason(int currentSeasonId),
    @required TResult search(String searchString),
  }) {
    assert(initial != null);
    assert(changeSeason != null);
    assert(search != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult changeSeason(int currentSeasonId),
    TResult search(String searchString),
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
    @required TResult initial(_EpisodesInitialEvent value),
    @required TResult changeSeason(_EpisodesChangeSeasonEvent value),
    @required TResult search(_EpisodesSearchEvent value),
  }) {
    assert(initial != null);
    assert(changeSeason != null);
    assert(search != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_EpisodesInitialEvent value),
    TResult changeSeason(_EpisodesChangeSeasonEvent value),
    TResult search(_EpisodesSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EpisodesInitialEvent implements EpisodesEvent {
  const factory _EpisodesInitialEvent() = _$_EpisodesInitialEvent;
}

/// @nodoc
abstract class _$EpisodesChangeSeasonEventCopyWith<$Res> {
  factory _$EpisodesChangeSeasonEventCopyWith(_EpisodesChangeSeasonEvent value,
          $Res Function(_EpisodesChangeSeasonEvent) then) =
      __$EpisodesChangeSeasonEventCopyWithImpl<$Res>;
  $Res call({int currentSeasonId});
}

/// @nodoc
class __$EpisodesChangeSeasonEventCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$EpisodesChangeSeasonEventCopyWith<$Res> {
  __$EpisodesChangeSeasonEventCopyWithImpl(_EpisodesChangeSeasonEvent _value,
      $Res Function(_EpisodesChangeSeasonEvent) _then)
      : super(_value, (v) => _then(v as _EpisodesChangeSeasonEvent));

  @override
  _EpisodesChangeSeasonEvent get _value =>
      super._value as _EpisodesChangeSeasonEvent;

  @override
  $Res call({
    Object currentSeasonId = freezed,
  }) {
    return _then(_EpisodesChangeSeasonEvent(
      currentSeasonId: currentSeasonId == freezed
          ? _value.currentSeasonId
          : currentSeasonId as int,
    ));
  }
}

/// @nodoc
class _$_EpisodesChangeSeasonEvent
    with DiagnosticableTreeMixin
    implements _EpisodesChangeSeasonEvent {
  const _$_EpisodesChangeSeasonEvent({@required this.currentSeasonId})
      : assert(currentSeasonId != null);

  @override
  final int currentSeasonId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesEvent.changeSeason(currentSeasonId: $currentSeasonId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodesEvent.changeSeason'))
      ..add(DiagnosticsProperty('currentSeasonId', currentSeasonId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodesChangeSeasonEvent &&
            (identical(other.currentSeasonId, currentSeasonId) ||
                const DeepCollectionEquality()
                    .equals(other.currentSeasonId, currentSeasonId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentSeasonId);

  @JsonKey(ignore: true)
  @override
  _$EpisodesChangeSeasonEventCopyWith<_EpisodesChangeSeasonEvent>
      get copyWith =>
          __$EpisodesChangeSeasonEventCopyWithImpl<_EpisodesChangeSeasonEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult changeSeason(int currentSeasonId),
    @required TResult search(String searchString),
  }) {
    assert(initial != null);
    assert(changeSeason != null);
    assert(search != null);
    return changeSeason(currentSeasonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult changeSeason(int currentSeasonId),
    TResult search(String searchString),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSeason != null) {
      return changeSeason(currentSeasonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_EpisodesInitialEvent value),
    @required TResult changeSeason(_EpisodesChangeSeasonEvent value),
    @required TResult search(_EpisodesSearchEvent value),
  }) {
    assert(initial != null);
    assert(changeSeason != null);
    assert(search != null);
    return changeSeason(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_EpisodesInitialEvent value),
    TResult changeSeason(_EpisodesChangeSeasonEvent value),
    TResult search(_EpisodesSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSeason != null) {
      return changeSeason(this);
    }
    return orElse();
  }
}

abstract class _EpisodesChangeSeasonEvent implements EpisodesEvent {
  const factory _EpisodesChangeSeasonEvent({@required int currentSeasonId}) =
      _$_EpisodesChangeSeasonEvent;

  int get currentSeasonId;
  @JsonKey(ignore: true)
  _$EpisodesChangeSeasonEventCopyWith<_EpisodesChangeSeasonEvent> get copyWith;
}

/// @nodoc
abstract class _$EpisodesSearchEventCopyWith<$Res> {
  factory _$EpisodesSearchEventCopyWith(_EpisodesSearchEvent value,
          $Res Function(_EpisodesSearchEvent) then) =
      __$EpisodesSearchEventCopyWithImpl<$Res>;
  $Res call({String searchString});
}

/// @nodoc
class __$EpisodesSearchEventCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$EpisodesSearchEventCopyWith<$Res> {
  __$EpisodesSearchEventCopyWithImpl(
      _EpisodesSearchEvent _value, $Res Function(_EpisodesSearchEvent) _then)
      : super(_value, (v) => _then(v as _EpisodesSearchEvent));

  @override
  _EpisodesSearchEvent get _value => super._value as _EpisodesSearchEvent;

  @override
  $Res call({
    Object searchString = freezed,
  }) {
    return _then(_EpisodesSearchEvent(
      searchString: searchString == freezed
          ? _value.searchString
          : searchString as String,
    ));
  }
}

/// @nodoc
class _$_EpisodesSearchEvent
    with DiagnosticableTreeMixin
    implements _EpisodesSearchEvent {
  const _$_EpisodesSearchEvent({@required this.searchString})
      : assert(searchString != null);

  @override
  final String searchString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesEvent.search(searchString: $searchString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodesEvent.search'))
      ..add(DiagnosticsProperty('searchString', searchString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodesSearchEvent &&
            (identical(other.searchString, searchString) ||
                const DeepCollectionEquality()
                    .equals(other.searchString, searchString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchString);

  @JsonKey(ignore: true)
  @override
  _$EpisodesSearchEventCopyWith<_EpisodesSearchEvent> get copyWith =>
      __$EpisodesSearchEventCopyWithImpl<_EpisodesSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult changeSeason(int currentSeasonId),
    @required TResult search(String searchString),
  }) {
    assert(initial != null);
    assert(changeSeason != null);
    assert(search != null);
    return search(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult changeSeason(int currentSeasonId),
    TResult search(String searchString),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_EpisodesInitialEvent value),
    @required TResult changeSeason(_EpisodesChangeSeasonEvent value),
    @required TResult search(_EpisodesSearchEvent value),
  }) {
    assert(initial != null);
    assert(changeSeason != null);
    assert(search != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_EpisodesInitialEvent value),
    TResult changeSeason(_EpisodesChangeSeasonEvent value),
    TResult search(_EpisodesSearchEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _EpisodesSearchEvent implements EpisodesEvent {
  const factory _EpisodesSearchEvent({@required String searchString}) =
      _$_EpisodesSearchEvent;

  String get searchString;
  @JsonKey(ignore: true)
  _$EpisodesSearchEventCopyWith<_EpisodesSearchEvent> get copyWith;
}

/// @nodoc
class _$EpisodesStateTearOff {
  const _$EpisodesStateTearOff();

// ignore: unused_element
  _EpisodesLoadingState loading() {
    return const _EpisodesLoadingState();
  }

// ignore: unused_element
  _EpisodesDataState data(
      {@required List<int> seasonsNameList,
      @required List<EpisodesDatum> episodesList,
      @required int currentSeasonId}) {
    return _EpisodesDataState(
      seasonsNameList: seasonsNameList,
      episodesList: episodesList,
      currentSeasonId: currentSeasonId,
    );
  }

// ignore: unused_element
  _EpisodesSearchDataState searchData(
      {@required List<EpisodesDatum> episodesList}) {
    return _EpisodesSearchDataState(
      episodesList: episodesList,
    );
  }

// ignore: unused_element
  _EpisodesErrorState error() {
    return const _EpisodesErrorState();
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodesState = _$EpisodesStateTearOff();

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(List<int> seasonsNameList,
            List<EpisodesDatum> episodesList, int currentSeasonId),
    @required TResult searchData(List<EpisodesDatum> episodesList),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<int> seasonsNameList, List<EpisodesDatum> episodesList,
        int currentSeasonId),
    TResult searchData(List<EpisodesDatum> episodesList),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodesLoadingState value),
    @required TResult data(_EpisodesDataState value),
    @required TResult searchData(_EpisodesSearchDataState value),
    @required TResult error(_EpisodesErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodesLoadingState value),
    TResult data(_EpisodesDataState value),
    TResult searchData(_EpisodesSearchDataState value),
    TResult error(_EpisodesErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  final EpisodesState _value;
  // ignore: unused_field
  final $Res Function(EpisodesState) _then;
}

/// @nodoc
abstract class _$EpisodesLoadingStateCopyWith<$Res> {
  factory _$EpisodesLoadingStateCopyWith(_EpisodesLoadingState value,
          $Res Function(_EpisodesLoadingState) then) =
      __$EpisodesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EpisodesLoadingStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$EpisodesLoadingStateCopyWith<$Res> {
  __$EpisodesLoadingStateCopyWithImpl(
      _EpisodesLoadingState _value, $Res Function(_EpisodesLoadingState) _then)
      : super(_value, (v) => _then(v as _EpisodesLoadingState));

  @override
  _EpisodesLoadingState get _value => super._value as _EpisodesLoadingState;
}

/// @nodoc
class _$_EpisodesLoadingState
    with DiagnosticableTreeMixin
    implements _EpisodesLoadingState {
  const _$_EpisodesLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodesState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EpisodesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(List<int> seasonsNameList,
            List<EpisodesDatum> episodesList, int currentSeasonId),
    @required TResult searchData(List<EpisodesDatum> episodesList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<int> seasonsNameList, List<EpisodesDatum> episodesList,
        int currentSeasonId),
    TResult searchData(List<EpisodesDatum> episodesList),
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
    @required TResult loading(_EpisodesLoadingState value),
    @required TResult data(_EpisodesDataState value),
    @required TResult searchData(_EpisodesSearchDataState value),
    @required TResult error(_EpisodesErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodesLoadingState value),
    TResult data(_EpisodesDataState value),
    TResult searchData(_EpisodesSearchDataState value),
    TResult error(_EpisodesErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EpisodesLoadingState implements EpisodesState {
  const factory _EpisodesLoadingState() = _$_EpisodesLoadingState;
}

/// @nodoc
abstract class _$EpisodesDataStateCopyWith<$Res> {
  factory _$EpisodesDataStateCopyWith(
          _EpisodesDataState value, $Res Function(_EpisodesDataState) then) =
      __$EpisodesDataStateCopyWithImpl<$Res>;
  $Res call(
      {List<int> seasonsNameList,
      List<EpisodesDatum> episodesList,
      int currentSeasonId});
}

/// @nodoc
class __$EpisodesDataStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$EpisodesDataStateCopyWith<$Res> {
  __$EpisodesDataStateCopyWithImpl(
      _EpisodesDataState _value, $Res Function(_EpisodesDataState) _then)
      : super(_value, (v) => _then(v as _EpisodesDataState));

  @override
  _EpisodesDataState get _value => super._value as _EpisodesDataState;

  @override
  $Res call({
    Object seasonsNameList = freezed,
    Object episodesList = freezed,
    Object currentSeasonId = freezed,
  }) {
    return _then(_EpisodesDataState(
      seasonsNameList: seasonsNameList == freezed
          ? _value.seasonsNameList
          : seasonsNameList as List<int>,
      episodesList: episodesList == freezed
          ? _value.episodesList
          : episodesList as List<EpisodesDatum>,
      currentSeasonId: currentSeasonId == freezed
          ? _value.currentSeasonId
          : currentSeasonId as int,
    ));
  }
}

/// @nodoc
class _$_EpisodesDataState
    with DiagnosticableTreeMixin
    implements _EpisodesDataState {
  const _$_EpisodesDataState(
      {@required this.seasonsNameList,
      @required this.episodesList,
      @required this.currentSeasonId})
      : assert(seasonsNameList != null),
        assert(episodesList != null),
        assert(currentSeasonId != null);

  @override
  final List<int> seasonsNameList;
  @override
  final List<EpisodesDatum> episodesList;
  @override
  final int currentSeasonId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesState.data(seasonsNameList: $seasonsNameList, episodesList: $episodesList, currentSeasonId: $currentSeasonId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodesState.data'))
      ..add(DiagnosticsProperty('seasonsNameList', seasonsNameList))
      ..add(DiagnosticsProperty('episodesList', episodesList))
      ..add(DiagnosticsProperty('currentSeasonId', currentSeasonId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodesDataState &&
            (identical(other.seasonsNameList, seasonsNameList) ||
                const DeepCollectionEquality()
                    .equals(other.seasonsNameList, seasonsNameList)) &&
            (identical(other.episodesList, episodesList) ||
                const DeepCollectionEquality()
                    .equals(other.episodesList, episodesList)) &&
            (identical(other.currentSeasonId, currentSeasonId) ||
                const DeepCollectionEquality()
                    .equals(other.currentSeasonId, currentSeasonId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seasonsNameList) ^
      const DeepCollectionEquality().hash(episodesList) ^
      const DeepCollectionEquality().hash(currentSeasonId);

  @JsonKey(ignore: true)
  @override
  _$EpisodesDataStateCopyWith<_EpisodesDataState> get copyWith =>
      __$EpisodesDataStateCopyWithImpl<_EpisodesDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(List<int> seasonsNameList,
            List<EpisodesDatum> episodesList, int currentSeasonId),
    @required TResult searchData(List<EpisodesDatum> episodesList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return data(seasonsNameList, episodesList, currentSeasonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<int> seasonsNameList, List<EpisodesDatum> episodesList,
        int currentSeasonId),
    TResult searchData(List<EpisodesDatum> episodesList),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(seasonsNameList, episodesList, currentSeasonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodesLoadingState value),
    @required TResult data(_EpisodesDataState value),
    @required TResult searchData(_EpisodesSearchDataState value),
    @required TResult error(_EpisodesErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodesLoadingState value),
    TResult data(_EpisodesDataState value),
    TResult searchData(_EpisodesSearchDataState value),
    TResult error(_EpisodesErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _EpisodesDataState implements EpisodesState {
  const factory _EpisodesDataState(
      {@required List<int> seasonsNameList,
      @required List<EpisodesDatum> episodesList,
      @required int currentSeasonId}) = _$_EpisodesDataState;

  List<int> get seasonsNameList;
  List<EpisodesDatum> get episodesList;
  int get currentSeasonId;
  @JsonKey(ignore: true)
  _$EpisodesDataStateCopyWith<_EpisodesDataState> get copyWith;
}

/// @nodoc
abstract class _$EpisodesSearchDataStateCopyWith<$Res> {
  factory _$EpisodesSearchDataStateCopyWith(_EpisodesSearchDataState value,
          $Res Function(_EpisodesSearchDataState) then) =
      __$EpisodesSearchDataStateCopyWithImpl<$Res>;
  $Res call({List<EpisodesDatum> episodesList});
}

/// @nodoc
class __$EpisodesSearchDataStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$EpisodesSearchDataStateCopyWith<$Res> {
  __$EpisodesSearchDataStateCopyWithImpl(_EpisodesSearchDataState _value,
      $Res Function(_EpisodesSearchDataState) _then)
      : super(_value, (v) => _then(v as _EpisodesSearchDataState));

  @override
  _EpisodesSearchDataState get _value =>
      super._value as _EpisodesSearchDataState;

  @override
  $Res call({
    Object episodesList = freezed,
  }) {
    return _then(_EpisodesSearchDataState(
      episodesList: episodesList == freezed
          ? _value.episodesList
          : episodesList as List<EpisodesDatum>,
    ));
  }
}

/// @nodoc
class _$_EpisodesSearchDataState
    with DiagnosticableTreeMixin
    implements _EpisodesSearchDataState {
  const _$_EpisodesSearchDataState({@required this.episodesList})
      : assert(episodesList != null);

  @override
  final List<EpisodesDatum> episodesList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesState.searchData(episodesList: $episodesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodesState.searchData'))
      ..add(DiagnosticsProperty('episodesList', episodesList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodesSearchDataState &&
            (identical(other.episodesList, episodesList) ||
                const DeepCollectionEquality()
                    .equals(other.episodesList, episodesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodesList);

  @JsonKey(ignore: true)
  @override
  _$EpisodesSearchDataStateCopyWith<_EpisodesSearchDataState> get copyWith =>
      __$EpisodesSearchDataStateCopyWithImpl<_EpisodesSearchDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(List<int> seasonsNameList,
            List<EpisodesDatum> episodesList, int currentSeasonId),
    @required TResult searchData(List<EpisodesDatum> episodesList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return searchData(episodesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<int> seasonsNameList, List<EpisodesDatum> episodesList,
        int currentSeasonId),
    TResult searchData(List<EpisodesDatum> episodesList),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchData != null) {
      return searchData(episodesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodesLoadingState value),
    @required TResult data(_EpisodesDataState value),
    @required TResult searchData(_EpisodesSearchDataState value),
    @required TResult error(_EpisodesErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return searchData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodesLoadingState value),
    TResult data(_EpisodesDataState value),
    TResult searchData(_EpisodesSearchDataState value),
    TResult error(_EpisodesErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchData != null) {
      return searchData(this);
    }
    return orElse();
  }
}

abstract class _EpisodesSearchDataState implements EpisodesState {
  const factory _EpisodesSearchDataState(
          {@required List<EpisodesDatum> episodesList}) =
      _$_EpisodesSearchDataState;

  List<EpisodesDatum> get episodesList;
  @JsonKey(ignore: true)
  _$EpisodesSearchDataStateCopyWith<_EpisodesSearchDataState> get copyWith;
}

/// @nodoc
abstract class _$EpisodesErrorStateCopyWith<$Res> {
  factory _$EpisodesErrorStateCopyWith(
          _EpisodesErrorState value, $Res Function(_EpisodesErrorState) then) =
      __$EpisodesErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EpisodesErrorStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$EpisodesErrorStateCopyWith<$Res> {
  __$EpisodesErrorStateCopyWithImpl(
      _EpisodesErrorState _value, $Res Function(_EpisodesErrorState) _then)
      : super(_value, (v) => _then(v as _EpisodesErrorState));

  @override
  _EpisodesErrorState get _value => super._value as _EpisodesErrorState;
}

/// @nodoc
class _$_EpisodesErrorState
    with DiagnosticableTreeMixin
    implements _EpisodesErrorState {
  const _$_EpisodesErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodesState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodesState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EpisodesErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(List<int> seasonsNameList,
            List<EpisodesDatum> episodesList, int currentSeasonId),
    @required TResult searchData(List<EpisodesDatum> episodesList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<int> seasonsNameList, List<EpisodesDatum> episodesList,
        int currentSeasonId),
    TResult searchData(List<EpisodesDatum> episodesList),
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
    @required TResult loading(_EpisodesLoadingState value),
    @required TResult data(_EpisodesDataState value),
    @required TResult searchData(_EpisodesSearchDataState value),
    @required TResult error(_EpisodesErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(searchData != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodesLoadingState value),
    TResult data(_EpisodesDataState value),
    TResult searchData(_EpisodesSearchDataState value),
    TResult error(_EpisodesErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EpisodesErrorState implements EpisodesState {
  const factory _EpisodesErrorState() = _$_EpisodesErrorState;
}
