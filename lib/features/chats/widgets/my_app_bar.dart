import 'package:chat_with_gemini/features/chats/widgets/avata.dart';
import 'package:chat_with_gemini/features/chats/widgets/my_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      width: size.width,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(size.width * 0.07),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Avatar(size: size),
          const MyButton(),
        ],
      ),
    );
  }
}
