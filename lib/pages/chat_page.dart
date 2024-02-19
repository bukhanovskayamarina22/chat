import 'package:flutter/material.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';
import 'package:test_assignment_chat/widgets/chat_page_title_card.dart';
import 'package:test_assignment_chat/widgets/common_widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatPageAppBar(name: "User Name", status: "status",),
    );
  }
}

class ChatPageAppBar extends StatelessWidget {
  final String name; 
  final String status;
  const ChatPageAppBar({
    super.key, required this.name, required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 38, right: 20, bottom: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7, right: 6, bottom: 7),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                      height: 36,
                      width: 36,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                        color: Theme.of(context).colorScheme.onSecondary,
                      )),
                ),
              ),
              Flexible(
                  child: ChatTitleCard(
                      gradient: Gradients.green,
                      status: status,
                      name: name))
            ],
          ),
        ),
        const TetriaryDivider(),
      ],
    );
  }
}
