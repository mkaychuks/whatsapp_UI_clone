import 'package:flutter/material.dart';

class CallListItem extends StatelessWidget {
  String contact;
  String timeOfCall;
  String contactImage;

  CallListItem(
      {required this.contact,
      required this.contactImage,
      required this.timeOfCall,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: ListTile(
        title: Text(
          contact,
          style: const TextStyle(fontSize: 15),
        ),
        subtitle: Text(
          timeOfCall,
          style: const TextStyle(fontSize: 15),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(contactImage),
        ),
        trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
      ),
    );
  }
}
