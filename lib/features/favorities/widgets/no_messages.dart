import 'package:flutter/material.dart';

class NoMessages extends StatelessWidget {
  const NoMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
          child: Column(
        children: [
          Image.asset("assets/telescopio.png"),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "No Post Yet",
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff616770),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      )),
    );
  }
}
