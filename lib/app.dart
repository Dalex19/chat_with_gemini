import 'package:chat_with_gemini/features/chats/main.dart';
import 'package:chat_with_gemini/features/favorities/favorites.dart';
import 'package:chat_with_gemini/features/favorities/state/messages_favorities.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> buildScreens() {
    return [const ChatScreen(), const Favorities()];
  }

  List<PersistentBottomNavBarItem> navBarsItems(String count, bool isVisible) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.systemPurple,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Badge(
          isLabelVisible: !isVisible,
          label: Text(count),
          child: const Icon(CupertinoIcons.heart_fill),
        ),
        title: ("Messages"),
        activeColorPrimary: CupertinoColors.systemPurple,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    MessagesFavoritiesProvider favMessageState =
        Provider.of<MessagesFavoritiesProvider>(context);
    return PersistentTabView(
        controller: _controller,
        context,
        screens: buildScreens(),
        items: navBarsItems(favMessageState.messagesList.length.toString(),
            favMessageState.messagesList.isEmpty));
  }
}
