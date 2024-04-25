import 'package:flutter/material.dart';

class MessagesFavoritiesProvider extends ChangeNotifier {
  List<String> messagesList = [];

  void addNewMessageFav(String newMessage) {
    messagesList.add(newMessage);
    notifyListeners();
  }

  void resetMessageList() {
    messagesList.clear();
    notifyListeners();
  }
}
