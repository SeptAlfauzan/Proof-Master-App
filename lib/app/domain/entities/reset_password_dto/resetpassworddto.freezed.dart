// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetpassworddto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordDto _$ResetPasswordDtoFromJson(Map<String, dynamic> json) {
  return _ResetPasswordDto.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordDto {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordDtoCopyWith<ResetPasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordDtoCopyWith<$Res> {
  factory $ResetPasswordDtoCopyWith(
          ResetPasswordDto value, $Res Function(ResetPasswordDto) then) =
      _$ResetPasswordDtoCopyWithImpl<$Res, ResetPasswordDto>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ResetPasswordDtoCopyWithImpl<$Res, $Val extends ResetPasswordDto>
    implements $ResetPasswordDtoCopyWith<$Res> {
  _$ResetPasswordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordDtoImplCopyWith<$Res>
    implements $ResetPasswordDtoCopyWith<$Res> {
  factory _$$ResetPasswordDtoImplCopyWith(_$ResetPasswordDtoImpl value,
          $Res Function(_$ResetPasswordDtoImpl) then) =
      __$$ResetPasswordDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordDtoImplCopyWithImpl<$Res>
    extends _$ResetPasswordDtoCopyWithImpl<$Res, _$ResetPasswordDtoImpl>
    implements _$$ResetPasswordDtoImplCopyWith<$Res> {
  __$$ResetPasswordDtoImplCopyWithImpl(_$ResetPasswordDtoImpl _value,
      $Res Function(_$ResetPasswordDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordDtoImpl implements _ResetPasswordDto {
  _$ResetPasswordDtoImpl({required this.email});

  factory _$ResetPasswordDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordDtoImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPasswordDto(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordDtoImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordDtoImplCopyWith<_$ResetPasswordDtoImpl> get copyWith =>
      __$$ResetPasswordDtoImplCopyWithImpl<_$ResetPasswordDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordDtoImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordDto implements ResetPasswordDto {
  factory _ResetPasswordDto({required final String email}) =
      _$ResetPasswordDtoImpl;

  factory _ResetPasswordDto.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordDtoImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordDtoImplCopyWith<_$ResetPasswordDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
