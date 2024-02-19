import 'package:flutter/material.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';
import 'package:test_assignment_chat/widgets/chat_card.dart';

class ChatsPageChatCard extends StatelessWidget {
  const ChatsPageChatCard({super.key, required this.isLastMessageMine});
  final bool isLastMessageMine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 12, bottom: 10),
      child: ChatCard(
        gradient: Gradients.green,
        name: "Виктор Власов",
        subtext: LastMessagePreview(isLastMessageMine: isLastMessageMine),
      ),
    );
  }
}

class LastMessagePreview extends StatelessWidget {
  const LastMessagePreview({
    super.key,
    required this.isLastMessageMine,
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
                    "This is the last message",
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
                    "text",
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
  const LastMessageDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        alignment: Alignment.topRight,
        child: Text(
          "Вчера",
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
      ),
    );
  }
}
