import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

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
          const SizedBox(height: 10,),
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
    );
  }
}
