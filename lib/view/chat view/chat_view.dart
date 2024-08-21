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
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Message',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_circle_outline_rounded),
                )
              ],
            ),
            body: ListView.builder(itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  viewModel.navigatetochattingView();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Color(0xffECF3F6),
                    title: Text(
                      'Bruno Pharm',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 15,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/images/Photo.png"),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello i really like your post'),
                        SizedBox(height: 8),
                        Text('2 min ago',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '5',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(width: 5),
                            ImageIcon(AssetImage('assets/images/mesg.png'))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        });
  }
}
