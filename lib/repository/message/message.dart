import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart'; 
part 'message.g.dart'; 

@freezed 
class Message with _$Message {
  const factory Message({
    required String id, 
    required String message, 
    String? imageURL, 
    @Default(true) bool isSend, 
    @Default(false) bool isRead, 
    required String senderId, 
    required String chatId,
    required DateTime timeStamp,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}