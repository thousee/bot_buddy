abstract class ChatEvent {}

class ChatSendMessage extends ChatEvent {
  final String message;
  ChatSendMessage(this.message);
}

class ChatReceiveMessage extends ChatEvent {
  final String message;
  ChatReceiveMessage(this.message);
}