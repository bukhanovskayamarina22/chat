import 'package:flutter/material.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';
import 'package:test_assignment_chat/widgets/chat_card.dart';

class ChatTitleCard extends StatelessWidget {
  final String name;
  final Gradients gradient;

  final String status;
  const ChatTitleCard({
    super.key,
    required this.gradient,
    required this.status,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ChatCard(
        gradient: gradient,
        name: name,
        subtext: Text(
          status,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ));
  }
}