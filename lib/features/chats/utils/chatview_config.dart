import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';

const featureActiveConfig = FeatureActiveConfig(
  enableSwipeToReply: false,
  enableSwipeToSeeTime: true,
);

const chatBackgroundConfig = ChatBackgroundConfiguration(
  backgroundColor: Colors.transparent,
);

SendMessageConfiguration sendMessageConfig(Color myColor) {
  final sendMessageConfig = SendMessageConfiguration(
    textFieldBackgroundColor: myColor,
    textFieldConfig: const TextFieldConfiguration(
      textStyle: TextStyle(color: Colors.black, fontSize: 18),
    ),
  );

  return sendMessageConfig;
}

ChatBubble inComingChatBubbleConfg(Color myColor) {
  final inComingChatBubbleConfg = ChatBubble(
      color: myColor,
      textStyle: const TextStyle(color: Colors.black, fontSize: 17));

  return inComingChatBubbleConfg;
}

ChatBubble outgoingChatBubbleConfg(Color myColor) {
  final outgoingChatBubbleConfig = ChatBubble(
      color: myColor,
      textStyle: const TextStyle(color: Colors.black, fontSize: 17));

  return outgoingChatBubbleConfig;
}
