import 'package:chat_app/constents.dart';
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
   ChatBuble({
    Key? key,
    required this.message,
  }) : super(key: key);

final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(
          left: 16, top: 30, bottom:  16,right: 32,
        ),
        margin: const EdgeInsets.symmetric(horizontal:16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32)
          ),
          color: KprimaryColor,
        ),
        child:  Text(
          message.message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}



class ChatBubleForFriend extends StatelessWidget {
   ChatBubleForFriend({
    Key? key,
    required this.message,
  }) : super(key: key);

final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.only(
          left: 16, top: 30, bottom:  16,right: 32,
        ),
        margin: const EdgeInsets.symmetric(horizontal:16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32)
          ),
          color: Color(0xff006D84),
        ),
        child:  Text(
          message.message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
