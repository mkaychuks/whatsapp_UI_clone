import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';

class ContactListItem extends StatelessWidget {
  String chatTitle;
  String chatSubtitle;
  String trailingTime;
  String contactImage;

  ContactListItem(
      {required this.chatTitle,
      required this.chatSubtitle,
      required this.trailingTime,
      required this.contactImage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ChatScreenPage(title: chatTitle, contactImage: contactImage,);
            },
          ));
        },
        child: ListTile(
          title: Text(
            chatTitle,
            style: const TextStyle(fontSize: 15),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              chatSubtitle,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(contactImage),
          ),
          trailing: Text(
            trailingTime,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
