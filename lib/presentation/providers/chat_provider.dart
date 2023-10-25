import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: "Hola Cielo", fromWho: FromWho.me),
    Message(text: "Ya estas en casa?", fromWho: FromWho.me),
    Message(text: "shii", fromWho: FromWho.other),
  ];

  Future<void> sendMessage(String message) async {
    //TODO: implement sendMessage
    final newMessage = Message(text: message, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
  }
}
