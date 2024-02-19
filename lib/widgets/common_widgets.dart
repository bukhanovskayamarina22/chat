
import 'package:flutter/material.dart';

class PaddingLeft12 extends StatelessWidget {
  const PaddingLeft12({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(left: 12));
  }
}

class TetriaryDivider extends StatelessWidget {
  const TetriaryDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(color: Theme.of(context).colorScheme.tertiary,);
  }
}