import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chat.freezed.dart'; 
part 'chat.g.dart';

@freezed 
class Chat with _$Chat {
  const factory Chat({
    required String id, 
    required List<String> usersId
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}