// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_online.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserOnline {
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  DateTime get lastTimeConnected => throw _privateConstructorUsedError;
  set lastTimeConnected(DateTime value) => throw _privateConstructorUsedError;
  DateTime get lastTimeDisconnected => throw _privateConstructorUsedError;
  set lastTimeDisconnected(DateTime value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserOnlineCopyWith<UserOnline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOnlineCopyWith<$Res> {
  factory $UserOnlineCopyWith(
          UserOnline value, $Res Function(UserOnline) then) =
      _$UserOnlineCopyWithImpl<$Res, UserOnline>;
  @useResult
  $Res call(
      {String userId,
      DateTime lastTimeConnected,
      DateTime lastTimeDisconnected});
}

/// @nodoc
class _$UserOnlineCopyWithImpl<$Res, $Val extends UserOnline>
    implements $UserOnlineCopyWith<$Res> {
  _$UserOnlineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lastTimeConnected = null,
    Object? lastTimeDisconnected = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastTimeConnected: null == lastTimeConnected
          ? _value.lastTimeConnected
          : lastTimeConnected // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastTimeDisconnected: null == lastTimeDisconnected
          ? _value.lastTimeDisconnected
          : lastTimeDisconnected // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserOnlineImplCopyWith<$Res>
    implements $UserOnlineCopyWith<$Res> {
  factory _$$UserOnlineImplCopyWith(
          _$UserOnlineImpl value, $Res Function(_$UserOnlineImpl) then) =
      __$$UserOnlineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      DateTime lastTimeConnected,
      DateTime lastTimeDisconnected});
}

/// @nodoc
class __$$UserOnlineImplCopyWithImpl<$Res>
    extends _$UserOnlineCopyWithImpl<$Res, _$UserOnlineImpl>
    implements _$$UserOnlineImplCopyWith<$Res> {
  __$$UserOnlineImplCopyWithImpl(
      _$UserOnlineImpl _value, $Res Function(_$UserOnlineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lastTimeConnected = null,
    Object? lastTimeDisconnected = null,
  }) {
    return _then(_$UserOnlineImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastTimeConnected: null == lastTimeConnected
          ? _value.lastTimeConnected
          : lastTimeConnected // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastTimeDisconnected: null == lastTimeDisconnected
          ? _value.lastTimeDisconnected
          : lastTimeDisconnected // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UserOnlineImpl with DiagnosticableTreeMixin implements _UserOnline {
  _$UserOnlineImpl(
      {required this.userId,
      required this.lastTimeConnected,
      required this.lastTimeDisconnected});

  @override
  String userId;
  @override
  DateTime lastTimeConnected;
  @override
  DateTime lastTimeDisconnected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserOnline(userId: $userId, lastTimeConnected: $lastTimeConnected, lastTimeDisconnected: $lastTimeDisconnected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserOnline'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('lastTimeConnected', lastTimeConnected))
      ..add(DiagnosticsProperty('lastTimeDisconnected', lastTimeDisconnected));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOnlineImplCopyWith<_$UserOnlineImpl> get copyWith =>
      __$$UserOnlineImplCopyWithImpl<_$UserOnlineImpl>(this, _$identity);
}

abstract class _UserOnline implements UserOnline {
  factory _UserOnline(
      {required String userId,
      required DateTime lastTimeConnected,
      required DateTime lastTimeDisconnected}) = _$UserOnlineImpl;

  @override
  String get userId;
  set userId(String value);
  @override
  DateTime get lastTimeConnected;
  set lastTimeConnected(DateTime value);
  @override
  DateTime get lastTimeDisconnected;
  set lastTimeDisconnected(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$UserOnlineImplCopyWith<_$UserOnlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
