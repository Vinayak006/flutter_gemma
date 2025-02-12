import 'package:flutter_gemma/const/const.dart';

class Message {
  const Message({required this.text, this.isUser = false});

  final String text;
  final bool isUser;

  String get transformToChatPrompt {
    if (isUser) {
      return '$startTurn$userPrefix\n$text$endTurn';
    }
    return '$startTurn$modelPrefix\n$text$endTurn';
  }
}
