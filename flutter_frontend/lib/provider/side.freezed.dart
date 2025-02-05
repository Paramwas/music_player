// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'side.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagSong _$TagSongFromJson(Map<String, dynamic> json) {
  return _TagSong.fromJson(json);
}

/// @nodoc
mixin _$TagSong {
  String get song => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this TagSong to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagSong
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagSongCopyWith<TagSong> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagSongCopyWith<$Res> {
  factory $TagSongCopyWith(TagSong value, $Res Function(TagSong) then) =
      _$TagSongCopyWithImpl<$Res, TagSong>;
  @useResult
  $Res call({String song, String artist, String image});
}

/// @nodoc
class _$TagSongCopyWithImpl<$Res, $Val extends TagSong>
    implements $TagSongCopyWith<$Res> {
  _$TagSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagSong
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? artist = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagSongImplCopyWith<$Res> implements $TagSongCopyWith<$Res> {
  factory _$$TagSongImplCopyWith(
          _$TagSongImpl value, $Res Function(_$TagSongImpl) then) =
      __$$TagSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String song, String artist, String image});
}

/// @nodoc
class __$$TagSongImplCopyWithImpl<$Res>
    extends _$TagSongCopyWithImpl<$Res, _$TagSongImpl>
    implements _$$TagSongImplCopyWith<$Res> {
  __$$TagSongImplCopyWithImpl(
      _$TagSongImpl _value, $Res Function(_$TagSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagSong
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? artist = null,
    Object? image = null,
  }) {
    return _then(_$TagSongImpl(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
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
class _$TagSongImpl with DiagnosticableTreeMixin implements _TagSong {
  _$TagSongImpl(
      {required this.song, required this.artist, required this.image});

  factory _$TagSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagSongImplFromJson(json);

  @override
  final String song;
  @override
  final String artist;
  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TagSong(song: $song, artist: $artist, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TagSong'))
      ..add(DiagnosticsProperty('song', song))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagSongImpl &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, song, artist, image);

  /// Create a copy of TagSong
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagSongImplCopyWith<_$TagSongImpl> get copyWith =>
      __$$TagSongImplCopyWithImpl<_$TagSongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagSongImplToJson(
      this,
    );
  }
}

abstract class _TagSong implements TagSong {
  factory _TagSong(
      {required final String song,
      required final String artist,
      required final String image}) = _$TagSongImpl;

  factory _TagSong.fromJson(Map<String, dynamic> json) = _$TagSongImpl.fromJson;

  @override
  String get song;
  @override
  String get artist;
  @override
  String get image;

  /// Create a copy of TagSong
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagSongImplCopyWith<_$TagSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
