import 'package:chat_with_gemini/features/chats/service/chat_service.dart';
import 'package:chat_with_gemini/shared/helpers.dart';
import 'package:chatview/chatview.dart';
import 'package:flutter/cupertino.dart';

class MessagesProvider extends ChangeNotifier {
  String stateMessage = "Active Now";

  static List<Message> messageList = [
    Message(
      id: '2',
      message: "Hola, Soy Gemini. Dime en que te puedo ayudar?",
      createdAt: DateTime.now(),
      sendBy: "2",
    ),
  ];

  ChatController myChatController = ChatController(
    initialMessageList: messageList,
    scrollController: ScrollController(),
    chatUsers: usersList,
  );

  void addNewMessage(String messageParam) {
    final message = Message(
      id: "1",
      message: messageParam,
      createdAt: DateTime.now(),
      sendBy: "1",
      messageType: MessageType.text,
    );
    myChatController.addMessage(message);
    notifyListeners();
  }

  void fetchGeminiResponse(String prompt) async {
    try {
      stateMessage = "Writting...";
      final geminiResponse = await ChatService.callGemini(prompt);

      final geminiMessage = Message(
        id: "2",
        message: geminiResponse,
        createdAt: DateTime.now(),
        sendBy: "2",
        messageType: MessageType.text,
      );
      myChatController.addMessage(geminiMessage);
      stateMessage = "Active Now";
    } catch (e) {
      stateMessage = "Error in connection";
    }
    notifyListeners();
  }
}
