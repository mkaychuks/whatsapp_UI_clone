import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';
import 'package:whatsapp_ui_clone/widgets/call_list_widget.dart';

class CallsScreenPage extends StatelessWidget {
  const CallsScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: appBarColor,
        child: const Icon(
          Icons.phone_in_talk,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text('Create a call link'),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text("Share a link for your WhatsApp call"),
              ),
              leading: CircleAvatar(
                backgroundColor: appBarColor,
                child: Transform.rotate(
                  angle: -45,
                  child: const Icon(
                    Icons.link,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Recent",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: calls.length,
                itemBuilder: (context, index) {
                  return CallListItem(
                    contact: calls[index]['name'].toString(),
                    contactImage: calls[index]['profilePic'].toString(),
                    timeOfCall: calls[index]['time'].toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
