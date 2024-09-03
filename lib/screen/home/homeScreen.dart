import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:gemini_app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Gemini',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return DashChat(
              currentUser: sender,
              onSend: (message) {
                controller.sendmessage(message);
              },
              messages: controller.messages);
        },
      ),
    );
  }
}

ChatUser sender = ChatUser(id: '1', firstName: 'Meshva', lastName: 'Patel');
ChatUser receiver = ChatUser(
  id: '2',
  firstName: 'Drashti',
  lastName: 'Patel',
  profileImage:
      'https://pics.craiyon.com/2023-10-28/5ad22761b9cf4196abba9a20dcc50c61.webp',
);
