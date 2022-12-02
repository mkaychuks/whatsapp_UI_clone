import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';
import 'package:whatsapp_ui_clone/utils/info.dart';

class StatusScreenPage extends StatelessWidget {
  const StatusScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: appBarColor,
            onPressed: () {},
            child: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: appBarColor,
            onPressed: () {},
            child: const Icon(
              Icons.camera_enhance,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: aviStatus(),
              title: const Text('My Status'),
              subtitle: const Text('Tap to add status update'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              "Recent updates",
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
                  return statusListItem(
                    calls[index]['name'],
                    calls[index]['time'],
                    calls[index]['profilePic'],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

// the stack is the stack for the CircularAvatar at the top of the screen
  Stack aviStatus() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [mainContainer(), childContainer()],
    );
  }

// the parent container that has the child on the stack
  Container mainContainer() {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
              ),
        ),
      ),
    );
  }

// the child container of the stack in question, refer to the above...
  Container childContainer() {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2)),
      child: const Text(
        '+',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  ListTile statusListItem(
      String? title, String? subtitle, String? networkLink) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage(networkLink!))),
      ),
      title: Text(title!),
      subtitle: Text(subtitle!),
    );
  }
}
