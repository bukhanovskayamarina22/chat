import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:test_assignment_chat/firebase_options.dart';
import 'package:test_assignment_chat/theme.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';
import 'package:test_assignment_chat/widgets/chat_card.dart';
import 'package:test_assignment_chat/widgets/chats_page_chat_card.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: double.minPositive,
          ),
          body: Placeholder()),
    );
  }
}

