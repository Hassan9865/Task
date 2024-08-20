import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/view/chat%20view/chat_viewModel.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ChatViewmodel(),
        builder: (context, ChatViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}
