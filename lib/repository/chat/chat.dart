import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chat.freezed.dart'; 

@freezed 
class Chat with _$Chat {
  const factory Chat({
    required String id, 
    required List<String> usersId
  }) = _Chat;
}