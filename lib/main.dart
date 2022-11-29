import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/home.dart';
import 'package:whatsapp_ui_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home:  const HomeScreen(),
    );
  }
}

