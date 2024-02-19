import 'package:flutter/material.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';
import 'package:test_assignment_chat/widgets/chat_card.dart';

class ChatsListPageChatCard extends StatelessWidget {
  final String name; 
  final Gradients gradient; 
  final String lastMessage;
  const ChatsListPageChatCard({super.key, required this.isLastMessageMine, required this.name, required this.gradient, required this.lastMessage});
  final bool isLastMessageMine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 12, bottom: 10),
      child: ChatCard(
        gradient: Gradients.green,
        name: name,
        subtext: LastMessagePreview(isLastMessageMine: isLastMessageMine, lastMessage: "The last message",),
      ),
    );
  }
}

class LastMessagePreview extends StatelessWidget {
  final String lastMessage;
  const LastMessagePreview({
    super.key,
    required this.isLastMessageMine, required this.lastMessage,
  });

  final bool isLastMessageMine;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isLastMessageMine
            ? [
                Text(
                  "Вы: ",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
                Flexible(
                  child: Text(
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    lastMessage,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                ),
              ]
            : [
                Flexible(
                  child: Text(
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    lastMessage,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                )
              ],
      ),
    );
  }
}



class LastMessageDate extends StatelessWidget {
  final String lastMessageDate;
  const LastMessageDate({
    super.key, required this.lastMessageDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        alignment: Alignment.topRight,
        child: Text(
          lastMessageDate,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
      ),
    );
  }
}
