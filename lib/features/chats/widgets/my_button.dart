import 'package:chat_with_gemini/features/chats/service/redirect_to.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        AppbarServices.myLaunchUrl();
      },
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          backgroundColor: Theme.of(context).colorScheme.secondary),
      child: const Icon(
        Icons.person,
        size: 40,
        color: Color(0xFF8E8AA8),
      ),
    );
  }
}
