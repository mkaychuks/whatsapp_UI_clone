import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';
import 'package:whatsapp_ui_clone/widgets/contact_list_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return ContactListItem(
                  chatTitle: info[index]['name'].toString(),
                  chatSubtitle: info[index]['message'].toString(),
                  trailingTime: info[index]['time'].toString(),
                  contactImage: info[index]['profilePic'].toString(),
                );
              },
            ),
          ),
          const Divider(
            color: dividerColor,
            indent: 85,
          )
        ],
      ),
    );
  }
}



// const ContactListItem(
//             chatSubtitle: "Pop quiz",
//             chatTitle: "Raye",
//             contactImage: "A",
//             trailingTime: '12.00pm',
//           ),