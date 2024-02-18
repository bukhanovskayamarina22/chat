import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_assignment_chat/firebase_options.dart';
import 'package:test_assignment_chat/theme.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:colorScheme,
        textTheme: textTheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: const Placeholder(),
    );
  }
}
