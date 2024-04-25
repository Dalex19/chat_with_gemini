import "package:flutter_dotenv/flutter_dotenv.dart";

import 'package:chat_with_gemini/app.dart';
import 'package:chat_with_gemini/features/chats/state/messages_provider.dart';

import 'package:chat_with_gemini/features/favorities/state/messages_favorities.dart';
import 'package:chat_with_gemini/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (_) => MessagesProvider()),
//       ChangeNotifierProvider(create: (_) => MessagesFavoritiesProvider()),
//     ],
//     child: const MyApp(),
//   ));
// }
Future<void> main() async {
  await dotenv.load();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MessagesProvider()),
        ChangeNotifierProvider(create: (_) => MessagesFavoritiesProvider())
      ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultMode,
      home: const MyHomePage(
        title: "Test test",
      ),
    );
  }
}
