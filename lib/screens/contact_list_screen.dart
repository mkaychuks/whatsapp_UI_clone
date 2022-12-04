import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';
import 'package:whatsapp_ui_clone/widgets/contact_list_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: appBarColor,
        child: const Icon(
          Icons.comment,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ContactListItem(
                    chatTitle: info[index]['name'].toString(),
                    chatSubtitle: info[index]['message'].toString(),
                    trailingTime: info[index]['time'].toString(),
                    contactImage: info[index]['profilePic'].toString(),
                  ),
                  const Divider(
                    color: dividerColor,
                    indent: 85,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
