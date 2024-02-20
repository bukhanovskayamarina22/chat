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
                      child: IconWithSize24(icon: Icons.arrow_back_ios, color: Theme.of(context).colorScheme.onSecondary,)),
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

class IconWithSize24 extends StatelessWidget {
  final Object icon;
  final Color color;
  const IconWithSize24({
    super.key, required this.icon, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      const ImageIcon(AssetImage("assets/attach.png")) as IconData,
      size: 24,
      color: color
    );
  }
}

class InputMessage extends StatelessWidget {
  const InputMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 14, right: 20, bottom: 44),
      child: Row(
        children: [
          const ChatPageImageIcon(path: 'assets/Attach.png',),
          const Padding(padding: EdgeInsets.only(left: 8)),
          Flexible(
              child: SecondaryContainer(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                maxLines: 99,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Сообщение",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Theme.of(context).colorScheme.tertiary)),
                    
              ),
            ),
          )),
          const Padding(padding: EdgeInsets.only(left: 8)),
          const ChatPageImageIcon(path: 'assets/Audio.png',),
          const Padding(padding: EdgeInsets.only(left: 8)),
        ],
      ),
    );
  }
}

class ChatPageImageIcon extends StatelessWidget {
  final String path;
  const ChatPageImageIcon({
    super.key, required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return SecondaryContainer(
      width: 42,
      child: ImageIcon(AssetImage(path),
          size: 24, color: Theme.of(context).colorScheme.onSecondary),
    );
  }
}
