import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_assignment_chat/pages/chat_page.dart';
import 'package:test_assignment_chat/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: colorScheme,
          textTheme: textTheme,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.light,
        home: const Scaffold(
          body: ChatPage(),
        ));
  }
}



