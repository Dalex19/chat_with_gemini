import 'package:chat_with_gemini/features/chats/state/messages_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    MessagesProvider currentState = Provider.of<MessagesProvider>(context);

    return Row(
      children: [
        Container(
          height: size.height * 0.06,
          width: size.height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                  image: AssetImage("assets/cortanita.jpg"),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Gemini IA",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color(0xFF98B9FF),
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Text(
                currentState.stateMessage,
                style: const TextStyle(color: Colors.grey),
              ),
            ])
          ],
        )
      ],
    );
  }
}
