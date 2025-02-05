// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagSongImpl _$$TagSongImplFromJson(Map<String, dynamic> json) =>
    _$TagSongImpl(
      song: json['song'] as String,
      artist: json['artist'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$TagSongImplToJson(_$TagSongImpl instance) =>
    <String, dynamic>{
      'song': instance.song,
      'artist': instance.artist,
      'image': instance.image,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$songPlaceHash() => r'0f1f9447ea183fe78c6656f5bee49c33cc337c1a';

/// See also [SongPlace].
@ProviderFor(SongPlace)
final songPlaceProvider =
    AutoDisposeAsyncNotifierProvider<SongPlace, List<TagSong>>.internal(
  SongPlace.new,
  name: r'songPlaceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$songPlaceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SongPlace = AutoDisposeAsyncNotifier<List<TagSong>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
