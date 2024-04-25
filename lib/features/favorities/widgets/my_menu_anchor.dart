import 'package:flutter/material.dart';


class MyMenuAnchor extends StatefulWidget {
  VoidCallback resetMessageList;
  MyMenuAnchor({super.key, required this.resetMessageList});

  @override
  State<MyMenuAnchor> createState() => _MyMenuAnchorState();
}

class _MyMenuAnchorState extends State<MyMenuAnchor> {
  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        builder:
            (BuildContext context, MenuController controller, Widget? child) {
          return IconButton(
            onPressed: () {
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
            icon: const Icon(Icons.more_horiz),
            tooltip: 'Show menu',
          );
        },
        menuChildren: [
          MenuItemButton(
              onPressed: () {
                widget.resetMessageList();
              },
              child: const Text("Reset All")),
          const MenuItemButton( child: Text("Config")),
        ]);
  }
}
