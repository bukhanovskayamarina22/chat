import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';

part 'user.freezed.dart'; 
part 'user.g.dart';

@unfreezed 
class User with _$User {
  factory User({
    required String id, 
    required String name, 
    @Default(Gradients.green) Gradients gradient,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}