import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:task/component/chatBubble.dart';
import 'package:task/view/chatting%20view/chatting_viewModel.dart';

class ChattingView extends StatelessWidget {
  const ChattingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ChattingViewmodel(),
      builder: (context, ChattingViewmodel viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Bruno Pharm',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            actions: [Icon(Icons.settings_outlined)],
          ),
          body: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Circle Avatar for the sender
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/Photo.png"),
                          ),
                        ),
                        // Chat Bubble
                        Expanded(
                          child: ChatBubble(
                            message: "Hello, how are you",
                            isSender: false,
                          ),
                        ),
                      ])),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Chat Bubble
                        Expanded(
                          child: ChatBubble(
                            message: "I am good Bruno Pharm",
                            isSender: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/Photo.png"),
                          ),
                        ),
                      ])),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // fixedSize: Size(150, 30),
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Circle Avatar for the sender
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/Photo.png"),
                          ),
                        ),
                        // Chat Bubble
                        Expanded(
                          child: ChatBubble(
                            message: "Hello, I really like your post!",
                            isSender: false,
                          ),
                        ),
                      ])),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Chat Bubble
                        Expanded(
                          child: ChatBubble(
                            message: "Thanks Bruno Pharm",
                            isSender: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/Photo.png"),
                          ),
                        ),
                      ])),
              Spacer(),
              // Message input field
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.photo_outlined,
                              color: Colors.grey,
                              size: MediaQuery.of(context).size.width * 0.08,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          Expanded(
                            child: TextField(
                              controller: viewmodel.messageController,
                              decoration: InputDecoration(
                                  hintText: "Type Something...",
                                  hintStyle: TextStyle(color: Colors.black54),
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey,
                            size: MediaQuery.of(context).size.width * 0.06,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
