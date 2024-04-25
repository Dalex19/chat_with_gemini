import 'package:chat_with_gemini/features/favorities/state/messages_favorities.dart';
import 'package:chat_with_gemini/features/favorities/widgets/messages_list.dart';
import 'package:chat_with_gemini/features/favorities/widgets/my_menu_anchor.dart';
import 'package:chat_with_gemini/features/favorities/widgets/no_messages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favorities extends StatelessWidget {
  const Favorities({super.key});

  @override
  Widget build(BuildContext context) {
    MessagesFavoritiesProvider favMessageState =
        Provider.of<MessagesFavoritiesProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Favorites Messages",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  MyMenuAnchor(
                    resetMessageList: favMessageState.resetMessageList,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              if (favMessageState.messagesList.isNotEmpty)
                MessagesList(
                  messagesList: favMessageState.messagesList,
                )
              else
                const NoMessages()
            ],
          ),
        ),
      ),
    );
  }
}
