import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_online.freezed.dart'; 
part 'user_online.g.dart';
@unfreezed 
class UserOnline with _$UserOnline {
  factory UserOnline({
    required String userId, 
    required DateTime lastTimeConnected, 
    required DateTime lastTimeDisconnected,
  }) = _UserOnline;

  factory UserOnline.fromJson(Map<String, dynamic> json) => _$UserOnlineFromJson(json);
}