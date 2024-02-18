import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_assignment_chat/firebase_options.dart';
import 'package:test_assignment_chat/theme.dart';
import 'package:test_assignment_chat/theme_provider.dart';
import 'package:test_assignment_chat/widgets/avatar_with_gradient.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    colorScheme: colorScheme,
    textTheme: textTheme,
    useMaterial3: true,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      theme: theme,
      child: MaterialApp(
        theme: theme,
        home: Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: Center(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10, right: 12),
                  child: Row(
                    children: [
                      const AvatarWidget(
                        avatarGradient: AvatarWithGradient.green,
                        avatarText: 'ВВ',
                      ),
                      const PaddingLeft12(),
                      const ChatData(),
                      const PaddingLeft12(),
                      LastMessageDate(theme: theme)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatData extends StatefulWidget {
  const ChatData({
    super.key,
  });

  @override
  State<ChatData> createState() => _ChatDataState();
}

class _ChatDataState extends State<ChatData> {
  bool isLastMessageMine = true;
  
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeProvider.of(context);
    return SizedBox(
      height: 50,
      width: 160,
      child: Column(
        children: [
          Text("Name Name", style: theme.textTheme.headlineSmall,), 
          isLastMessageMine ? const Row(children:[
            Text("Вы: "), 
            Text("Last message"),
          ]) : const Text("Last message"),
          
        ],
      ),
    );
  }
}

class LastMessageDate extends StatelessWidget {
  const LastMessageDate({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "Вчера",
        style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onSurfaceVariant),
      ),
    );
  }
}

class PaddingLeft12 extends StatelessWidget {
  const PaddingLeft12({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(left: 12));
  }
}
