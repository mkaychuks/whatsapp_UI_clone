import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';
import 'package:whatsapp_ui_clone/widgets/my_message_card.dart';
import 'package:whatsapp_ui_clone/widgets/sender_message_card.dart';

class ChatScreenPage extends StatelessWidget {
  String title;
  String contactImage;
  ChatScreenPage({super.key, required this.title, required this.contactImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(contactImage),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(title),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: appBarColor,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.attach_file),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                    hintText: 'Type a message',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: FloatingActionButton(
                  backgroundColor: appBarColor,
                  elevation: 0.0,
                  onPressed: () {},
                  mini: true,
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if(messages[index]['isMe'] == true){
            return MyMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString(),);
          }
          return SenderMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString(),);
        },
      ),
    );
  }
}
