import 'package:flutter/material.dart';
import 'package:test_assignment_chat/widgets/common_widgets.dart';

class DividerWithDate extends StatelessWidget {
  final String date;
  const DividerWithDate({required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Flexible(child: TetriaryDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(date, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.tertiary),),
        ),
        const Flexible(child: TetriaryDivider()),
      ],
    );
  }
}
