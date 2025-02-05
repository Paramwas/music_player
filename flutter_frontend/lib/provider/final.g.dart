// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisplayImpl _$$DisplayImplFromJson(Map<String, dynamic> json) =>
    _$DisplayImpl(
      image: json['image'] as String,
      name: json['name'] as String,
      number: json['number'] as String,
    );

Map<String, dynamic> _$$DisplayImplToJson(_$DisplayImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'number': instance.number,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buttonDisplayHash() => r'a8f5ba22673d7cef7bfa68772268c83e4745180d';

/// See also [ButtonDisplay].
@ProviderFor(ButtonDisplay)
final buttonDisplayProvider =
    AutoDisposeAsyncNotifierProvider<ButtonDisplay, List<Display>>.internal(
  ButtonDisplay.new,
  name: r'buttonDisplayProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$buttonDisplayHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ButtonDisplay = AutoDisposeAsyncNotifier<List<Display>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
