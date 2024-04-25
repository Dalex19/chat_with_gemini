import 'package:chat_with_gemini/features/chats/widgets/chats.dart';
import 'package:flutter/material.dart';

import 'package:chat_with_gemini/features/chats/widgets/my_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyAppBar(size: size),
              const Expanded(
                child: ChatsScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
