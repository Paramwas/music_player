// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'futures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trial _$TrialFromJson(Map<String, dynamic> json) {
  return _Trial.fromJson(json);
}

/// @nodoc
mixin _$Trial {
  String get artist => throw _privateConstructorUsedError;
  String get song => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this Trial to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialCopyWith<Trial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialCopyWith<$Res> {
  factory $TrialCopyWith(Trial value, $Res Function(Trial) then) =
      _$TrialCopyWithImpl<$Res, Trial>;
  @useResult
  $Res call({String artist, String song, String image});
}

/// @nodoc
class _$TrialCopyWithImpl<$Res, $Val extends Trial>
    implements $TrialCopyWith<$Res> {
  _$TrialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? song = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrialImplCopyWith<$Res> implements $TrialCopyWith<$Res> {
  factory _$$TrialImplCopyWith(
          _$TrialImpl value, $Res Function(_$TrialImpl) then) =
      __$$TrialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artist, String song, String image});
}

/// @nodoc
class __$$TrialImplCopyWithImpl<$Res>
    extends _$TrialCopyWithImpl<$Res, _$TrialImpl>
    implements _$$TrialImplCopyWith<$Res> {
  __$$TrialImplCopyWithImpl(
      _$TrialImpl _value, $Res Function(_$TrialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? song = null,
    Object? image = null,
  }) {
    return _then(_$TrialImpl(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrialImpl implements _Trial {
  _$TrialImpl({required this.artist, required this.song, required this.image});

  factory _$TrialImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrialImplFromJson(json);

  @override
  final String artist;
  @override
  final String song;
  @override
  final String image;

  @override
  String toString() {
    return 'Trial(artist: $artist, song: $song, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, artist, song, image);

  /// Create a copy of Trial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialImplCopyWith<_$TrialImpl> get copyWith =>
      __$$TrialImplCopyWithImpl<_$TrialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialImplToJson(
      this,
    );
  }
}

abstract class _Trial implements Trial {
  factory _Trial(
      {required final String artist,
      required final String song,
      required final String image}) = _$TrialImpl;

  factory _Trial.fromJson(Map<String, dynamic> json) = _$TrialImpl.fromJson;

  @override
  String get artist;
  @override
  String get song;
  @override
  String get image;

  /// Create a copy of Trial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialImplCopyWith<_$TrialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
