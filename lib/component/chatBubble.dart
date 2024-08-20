import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;

  const ChatBubble({
    super.key,
    required this.message,
    this.isSender = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isSender
          ? EdgeInsets.only(left: 50.0, right: 10.0)
          : EdgeInsets.only(right: 50.0, left: 10.0),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSender ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomLeft: isSender ? Radius.circular(8) : Radius.circular(0),
          bottomRight: isSender ? Radius.circular(0) : Radius.circular(8),
        ),
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 16,
          color: isSender ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}
