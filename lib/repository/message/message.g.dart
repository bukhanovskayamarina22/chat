// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      message: json['message'] as String,
      imageURL: json['imageURL'] as String?,
      isSend: json['isSend'] as bool? ?? true,
      isRead: json['isRead'] as bool? ?? false,
      senderId: json['senderId'] as String,
      chatId: json['chatId'] as String,
      timeStamp: DateTime.parse(json['timeStamp'] as String),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'imageURL': instance.imageURL,
      'isSend': instance.isSend,
      'isRead': instance.isRead,
      'senderId': instance.senderId,
      'chatId': instance.chatId,
      'timeStamp': instance.timeStamp.toIso8601String(),
    };
