import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeData theme;

  const ThemeProvider({super.key, 
    required this.theme,
    required Widget child,
  }) : super(child: child);

  static ThemeData of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    return provider!.theme; 
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) => theme != oldWidget.theme;
}