import 'package:ff/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class chatswidget extends StatefulWidget {
  const chatswidget({super.key});



  @override
  State<chatswidget> createState() => _chatswidgetState();
}

class _chatswidgetState extends State<chatswidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ChatList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement action to start a new chat
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(chats[index].avatarUrl),
          ),
          title: Text(chats[index].name),
          subtitle: Text(chats[index].lastMessage),
          trailing: Text(chats[index].lastMessageTime),
          onTap: () {
            // Implement action to navigate to the chat screen
            Navigator.push(context, MaterialPageRoute( builder: (context) =>ChatScreen()));
          },
        );
      },
    );
  }
}

class Chat {
  final String name;
  final String avatarUrl;
  final String lastMessage;
  final String lastMessageTime;

  Chat({
    required this.name,
    required this.avatarUrl,
    required this.lastMessage,
    required this.lastMessageTime,
  });
}

List<Chat> chats = [
  Chat(
    name: 'John Doe',
    avatarUrl: 'https://example.com/avatar1.jpg',
    lastMessage: 'Hello there!',
    lastMessageTime: '10:30 AM',
  ),
  Chat(
    name: 'Jane Smith',
    avatarUrl: 'https://example.com/avatar2.jpg',
    lastMessage: 'How are you?',
    lastMessageTime: 'Yesterday',
  ),
  Chat(
    name: 'Jane Smith',
    avatarUrl: 'https://example.com/avatar2.jpg',
    lastMessage: 'How are you?',
    lastMessageTime: 'Yesterday',
  ),
  Chat(
    name: 'Jane Smith',
    avatarUrl: 'https://example.com/avatar2.jpg',
    lastMessage: 'How are you?',
    lastMessageTime: 'Yesterday',
  ),
  // Add more chat items as needed
];