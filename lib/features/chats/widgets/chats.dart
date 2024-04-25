import 'package:chat_with_gemini/features/chats/state/messages_provider.dart';
import 'package:chat_with_gemini/features/chats/utils/chatview_config.dart';
import 'package:chat_with_gemini/features/favorities/state/messages_favorities.dart';
import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/quickalert.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    MessagesProvider myStateMessages = Provider.of<MessagesProvider>(context);
    MessagesFavoritiesProvider favMessageState =
        Provider.of<MessagesFavoritiesProvider>(context);

    final ColorScheme myColors = Theme.of(context).colorScheme;

    return ChatView(
      chatBubbleConfig: ChatBubbleConfiguration(
          onDoubleTap: (message) {
            QuickAlert.show(
              context: context,
              type: QuickAlertType.success,
              text: 'Message added to Fav',
            );
            favMessageState.addNewMessageFav(message.message);
          },
          inComingChatBubbleConfig: inComingChatBubbleConfg(myColors.secondary),
          outgoingChatBubbleConfig:
              outgoingChatBubbleConfg(myColors.onPrimary)),
      featureActiveConfig: featureActiveConfig,
      chatBackgroundConfig: chatBackgroundConfig,
      sendMessageConfig: sendMessageConfig(myColors.onPrimary),
      currentUser: ChatUser(id: "1", name: "Me"),
      chatController: myStateMessages.myChatController,
      onSendTap: (message, replyMessage, messageType) async {
        myStateMessages.addNewMessage(message);

        myStateMessages.fetchGeminiResponse(message);
      },
      chatViewState: ChatViewState.hasMessages,
    );
  }
}
