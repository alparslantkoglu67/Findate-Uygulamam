import '././chat_controller.dart';
import '././chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mesajlasma extends StatelessWidget {
  const Mesajlasma({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ChangeNotifierProvider(
        create: (_) => ChatController(),
        child: const ChatScreen(),
      ),
    );
  }
}
