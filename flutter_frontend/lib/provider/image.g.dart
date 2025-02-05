// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      image: json['image'] as String,
      number: json['number'] as String,
      tag: json['tag'] as String,
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'number': instance.number,
      'tag': instance.tag,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$retiveSongHash() => r'4829fb8b3c60c1d8f1e41941d045062d2a2263ed';

/// See also [RetiveSong].
@ProviderFor(RetiveSong)
final retiveSongProvider =
    AutoDisposeAsyncNotifierProvider<RetiveSong, List<Song>>.internal(
  RetiveSong.new,
  name: r'retiveSongProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$retiveSongHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RetiveSong = AutoDisposeAsyncNotifier<List<Song>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
