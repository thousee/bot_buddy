import 'package:bloc/bloc.dart';
import 'chat_event.dart';
import 'chat_state.dart';
import '../repository/chat_repository.dart';
import '../models/chat_message.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository repository;

  ChatBloc({required this.repository}) : super(ChatState(messages: [])) {
    on<ChatSendMessage>(_onSendMessage);
    on<ChatReceiveMessage>(_onReceiveMessage);
  }

  Future<void> _onSendMessage(
      ChatSendMessage event, Emitter<ChatState> emit) async {
    // Add user's message to the list and show loading.
    final userMessage = ChatMessage(text: event.message, isUser: true);
    emit(state.copyWith(
      messages: List.from(state.messages)..add(userMessage),
      isLoading: true,
    ));

    try {
      final response = await repository.sendMessage(event.message);
      add(ChatReceiveMessage(response));
    } catch (error) {
      add(ChatReceiveMessage("Error: Unable to fetch response."));
    }
  }

  void _onReceiveMessage(
      ChatReceiveMessage event, Emitter<ChatState> emit) {
    final botMessage = ChatMessage(text: event.message, isUser: false);
    emit(state.copyWith(
      messages: List.from(state.messages)..add(botMessage),
      isLoading: false,
    ));
  }
}