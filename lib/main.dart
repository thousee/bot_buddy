import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat/ui/chat_screen.dart';
import 'chat/repository/chat_repository.dart';
import 'chat/bloc/chat_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

void main() {
  // Replace with your valid API key
  final generativeModel = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: 'YOUR_API_KEY',// Replace with your API Key
  );
  final chatRepository = ChatRepository(model: generativeModel);
  runApp(MyApp(chatRepository: chatRepository));
}

class MyApp extends StatelessWidget {
  final ChatRepository chatRepository;
  const MyApp({Key? key, required this.chatRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BotBuddy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (context) => ChatBloc(repository: chatRepository),
        child: const ChatScreen(),
      ),
    );
  }
}
