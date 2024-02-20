// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_online.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserOnlineImpl _$$UserOnlineImplFromJson(Map<String, dynamic> json) =>
    _$UserOnlineImpl(
      userId: json['userId'] as String,
      lastTimeConnected: DateTime.parse(json['lastTimeConnected'] as String),
      lastTimeDisconnected:
          DateTime.parse(json['lastTimeDisconnected'] as String),
    );

Map<String, dynamic> _$$UserOnlineImplToJson(_$UserOnlineImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'lastTimeConnected': instance.lastTimeConnected.toIso8601String(),
      'lastTimeDisconnected': instance.lastTimeDisconnected.toIso8601String(),
    };
