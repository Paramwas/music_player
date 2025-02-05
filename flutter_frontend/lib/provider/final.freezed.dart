// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Display _$DisplayFromJson(Map<String, dynamic> json) {
  return _Display.fromJson(json);
}

/// @nodoc
mixin _$Display {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  /// Serializes this Display to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Display
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayCopyWith<Display> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayCopyWith<$Res> {
  factory $DisplayCopyWith(Display value, $Res Function(Display) then) =
      _$DisplayCopyWithImpl<$Res, Display>;
  @useResult
  $Res call({String image, String name, String number});
}

/// @nodoc
class _$DisplayCopyWithImpl<$Res, $Val extends Display>
    implements $DisplayCopyWith<$Res> {
  _$DisplayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Display
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayImplCopyWith<$Res> implements $DisplayCopyWith<$Res> {
  factory _$$DisplayImplCopyWith(
          _$DisplayImpl value, $Res Function(_$DisplayImpl) then) =
      __$$DisplayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String name, String number});
}

/// @nodoc
class __$$DisplayImplCopyWithImpl<$Res>
    extends _$DisplayCopyWithImpl<$Res, _$DisplayImpl>
    implements _$$DisplayImplCopyWith<$Res> {
  __$$DisplayImplCopyWithImpl(
      _$DisplayImpl _value, $Res Function(_$DisplayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Display
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_$DisplayImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayImpl with DiagnosticableTreeMixin implements _Display {
  _$DisplayImpl(
      {required this.image, required this.name, required this.number});

  factory _$DisplayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayImplFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Display(image: $image, name: $name, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Display'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name, number);

  /// Create a copy of Display
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayImplCopyWith<_$DisplayImpl> get copyWith =>
      __$$DisplayImplCopyWithImpl<_$DisplayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayImplToJson(
      this,
    );
  }
}

abstract class _Display implements Display {
  factory _Display(
      {required final String image,
      required final String name,
      required final String number}) = _$DisplayImpl;

  factory _Display.fromJson(Map<String, dynamic> json) = _$DisplayImpl.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get number;

  /// Create a copy of Display
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayImplCopyWith<_$DisplayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
