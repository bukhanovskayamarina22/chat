
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
    return Divider(
      thickness: 1,
      color: Theme.of(context).colorScheme.tertiary,);
  }
}

class SecondaryDivider extends StatelessWidget {
  const SecondaryDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Theme.of(context).colorScheme.tertiary,);
  }
}

class SecondaryContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  const SecondaryContainer({
    super.key,
    this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: child,
    );
  }
}