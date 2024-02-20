import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';
import 'package:test_assignment_chat/widgets/common_widgets.dart';
import 'package:test_assignment_chat/widgets/user_name.dart';

class ChatCard extends StatelessWidget {
  final Gradients gradient;
  final String name;
  final Widget subtext;
  final Widget? rightTile;
  const ChatCard({
    super.key,
    required this.gradient,
    required this.name,
    required this.subtext,
    this.rightTile,
  });

  String _getInitials(String name) {
    List<String> names = name.split(' ');
    String firstInitial = names[0][0].toUpperCase();
    String lastInitial = names.last[0].toUpperCase();

    return "$firstInitial$lastInitial";
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          AvatarWithGradient(
              avatarGradient: gradient, avatarText: _getInitials(name)),
          const PaddingLeft12(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserName(name: name),
              subtext,
            ],
          ),
          Flexible(
            child: LayoutBuilder(builder: (_, __) {
              if (rightTile != null) {
                return rightTile!;
              } else {
                return const SizedBox.shrink();
              }
            }),
          )
        ],
      ),
    );
  }
}

