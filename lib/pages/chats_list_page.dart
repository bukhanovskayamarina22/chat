import 'package:flutter/material.dart';
import 'package:test_assignment_chat/main.dart';
import 'package:test_assignment_chat/widgets/common_widgets.dart';

class ChatsListPageScaffold extends StatelessWidget {
  const ChatsListPageScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        ChatsListPageAppBar(),
      ],
    ));
  }
}

class ChatsListPageAppBar extends StatelessWidget {
  const ChatsListPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Чаты",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 6)),
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
            child: SecondaryContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Поиск",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Theme.of(context).colorScheme.tertiary),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 24)),
          const TetriaryDivider()
        ],
      ),
    );
  }
}
