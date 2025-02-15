import 'package:google_generative_ai/google_generative_ai.dart';

class ChatRepository {
  final GenerativeModel model;

  ChatRepository({required this.model});

  Future<String> sendMessage(String message) async {
    final content = [Content.text(message)];
    final response = await model.generateContent(content);
    return response.text ?? "Error: No response received.";
  }
}
